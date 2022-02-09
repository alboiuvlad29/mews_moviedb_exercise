import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_filter_type.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:mews_moviedb_exercise/src/movie_details/application/movie_details_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_featured/application/movies_featured_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../core/fakes.dart';
import '../../core/mocks.dart';

void main() {
  MoviesFeaturedBloc _bloc({MoviesRepository? moviesRepository}) {
    return MoviesFeaturedBloc(moviesRepository ?? MockMoviesRepository());
  }

  setUpAll(() {
    registerFallbackValue(MoviesFilterType.values.first);
  });

  group('MoviesFeaturedBloc testing', () {
    late NetworkFailure failure;
    late List<Movie> nowPlaying;
    late List<Movie> popularMovies;
    late List<Movie> topRatedMovies;
    late List<Movie> upcomingMovies;

    blocTest<MoviesFeaturedBloc, MoviesFeaturedState>(
      'emits [] when nothing is added',
      build: () => _bloc(),
      expect: () => <MovieDetailsState>[],
    );

    blocTest<MoviesFeaturedBloc, MoviesFeaturedState>(
      'emits failure state',
      setUp: () {
        failure = FakeNetworkFailure();
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();
        when(() => _repository.getMovieFilered(any())).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(right(failure)));
        return _bloc(moviesRepository: _repository);
      },
      act: (MoviesFeaturedBloc bloc) => bloc.init(),
      expect: () => <MoviesFeaturedState>[
        const MoviesFeaturedState.loading(),
        const MoviesFeaturedState(),
        MoviesFeaturedState.error(failure)
      ],
    );

    blocTest<MoviesFeaturedBloc, MoviesFeaturedState>(
      'emits loaded state',
      setUp: () {
        popularMovies = FakeMovies();
        upcomingMovies = FakeMovies();
        nowPlaying = FakeMovies();
        topRatedMovies = FakeMovies();
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();
        when(() => _repository.getMovieFilered(MoviesFilterType.popular))
            .thenAnswer((_) =>
                Future<Either<List<Movie>, NetworkFailure>>.value(
                    left(popularMovies)));
        when(() => _repository.getMovieFilered(MoviesFilterType.upcoming))
            .thenAnswer((_) =>
                Future<Either<List<Movie>, NetworkFailure>>.value(
                    left(upcomingMovies)));
        when(() => _repository.getMovieFilered(MoviesFilterType.topRated))
            .thenAnswer((_) =>
                Future<Either<List<Movie>, NetworkFailure>>.value(
                    left(topRatedMovies)));
        when(() => _repository.getMovieFilered(MoviesFilterType.nowPlaying))
            .thenAnswer((_) =>
                Future<Either<List<Movie>, NetworkFailure>>.value(
                    left(nowPlaying)));

        return _bloc(moviesRepository: _repository);
      },
      act: (MoviesFeaturedBloc bloc) => bloc.init(),
      expect: () => <MoviesFeaturedState>[
        const MoviesFeaturedState.loading(),
        MoviesFeaturedState(
          nowPlayingMovies: nowPlaying,
          upcomingMovies: upcomingMovies,
          topRatedMovies: topRatedMovies,
          popularMovies: popularMovies,
        )
      ],
    );
  });
}
