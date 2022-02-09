import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_filter_type.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:mews_moviedb_exercise/src/movie_details/application/movie_details_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_search/application/movie_search_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../core/fakes.dart';
import '../../core/mocks.dart';

void main() {
  MovieSearchBloc _bloc({MoviesRepository? moviesRepository}) {
    return MovieSearchBloc(moviesRepository ?? MockMoviesRepository());
  }

  setUpAll(() {
    registerFallbackValue(MoviesFilterType.values.first);
  });

  group('MovieSearchBloc testing', () {
    late NetworkFailure failure;
    late List<Movie> pageOne;
    late List<Movie> pageTwo;
    late List<Movie> pageThree;

    late MovieSearchState initialSeed;

    blocTest<MovieSearchBloc, MovieSearchState>(
      'emits [] when nothing is added',
      build: () => _bloc(),
      expect: () => <MovieDetailsState>[],
    );

    blocTest<MovieSearchBloc, MovieSearchState>(
      'emits failure state',
      setUp: () {
        failure = FakeNetworkFailure();
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();
        when(() => _repository.searchMovies(query: any(named: 'query')))
            .thenAnswer((_) =>
                Future<Either<List<Movie>, NetworkFailure>>.value(
                    right(failure)));
        return _bloc(moviesRepository: _repository);
      },
      act: (MovieSearchBloc bloc) => bloc.search('query'),
      wait: const Duration(milliseconds: 300),
      expect: () {
        const MovieSearchState initialState = MovieSearchState();
        return <MovieSearchState>[
          initialState,
          initialState.copyWith(loading: true, query: 'query'),
          initialState.copyWith(loading: false, query: 'query', error: failure),
        ];
      },
    );
    blocTest<MovieSearchBloc, MovieSearchState>(
      'emits succes state',
      setUp: () {
        pageOne = <Movie>[FakeMovie(), FakeMovie(), FakeMovie()];
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();
        when(() =>
            _repository.searchMovies(
                query: any(named: 'query'), page: 1)).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(left(pageOne)));

        return _bloc(moviesRepository: _repository);
      },
      act: (MovieSearchBloc bloc) => bloc.search('query'),
      wait: const Duration(milliseconds: 300),
      expect: () {
        const MovieSearchState initialState = MovieSearchState();
        return <MovieSearchState>[
          initialState,
          initialState.copyWith(loading: true, query: 'query'),
          initialState.copyWith(
            loading: false,
            query: 'query',
            items: <Movie>[...pageOne],
            pageSize: pageOne.length,
            currentPage: 1,
          ),
        ];
      },
    );

    blocTest<MovieSearchBloc, MovieSearchState>(
      'emits load more state',
      setUp: () {
        pageOne = <Movie>[FakeMovie(), FakeMovie(), FakeMovie()];
        pageTwo = <Movie>[FakeMovie(), FakeMovie(), FakeMovie()];
        pageThree = <Movie>[FakeMovie(), FakeMovie()];
        initialSeed = MovieSearchState(
          loading: false,
          query: 'query',
          items: <Movie>[...pageOne],
          pageSize: pageOne.length,
          currentPage: 1,
        );
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();
        when(() =>
            _repository.searchMovies(
                query: any(named: 'query'), page: 2)).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(left(pageTwo)));
        when(() =>
            _repository.searchMovies(
                query: any(named: 'query'), page: 3)).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(left(pageThree)));
        return _bloc(moviesRepository: _repository);
      },
      seed: () => initialSeed,
      act: (MovieSearchBloc bloc) async {
        bloc.onNewPageRequest(2);
        await Future<void>.delayed(const Duration(milliseconds: 400));
        bloc.onNewPageRequest(3);
      },
      wait: const Duration(milliseconds: 300),
      expect: () {
        return <MovieSearchState>[
          initialSeed.copyWith(
              items: <Movie>[...initialSeed.items, ...pageTwo], currentPage: 2),
          initialSeed.copyWith(
              items: <Movie>[...initialSeed.items, ...pageTwo, ...pageThree],
              currentPage: 3,
              isLastPage: true),
        ];
      },
    );
  });
}
