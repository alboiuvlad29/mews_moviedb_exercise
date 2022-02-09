import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:mews_moviedb_exercise/src/movie_details/application/movie_details_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../core/fakes.dart';
import '../../core/mocks.dart';

void main() {
  MovieDetailsBloc _movieDetailsBloc({MoviesRepository? moviesRepository}) {
    final MovieDetailsBlocArgs _args = MovieDetailsBlocArgs(id: -1);
    return MovieDetailsBloc(_args, moviesRepository ?? MockMoviesRepository());
  }

  group('MovieDetailsBloc testing', () {
    late NetworkFailure failure;
    late Credits credits;
    late Movie movie;
    late List<Movie> reccomendedMovies;
    blocTest<MovieDetailsBloc, MovieDetailsState>(
      'emits [] when nothing is added',
      build: () => _movieDetailsBloc(),
      expect: () => <MovieDetailsState>[],
    );

    blocTest<MovieDetailsBloc, MovieDetailsState>(
      'emits failure state',
      setUp: () {
        failure = FakeNetworkFailure();
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();

        when(() => _repository.getMovieDetails(any())).thenAnswer(
            (_) => Future<Either<Movie, NetworkFailure>>.value(right(failure)));
        when(() => _repository.getMovieCredits(any())).thenAnswer((_) =>
            Future<Either<Credits, NetworkFailure>>.value(right(failure)));
        when(() => _repository.getMovieRecommendations(any())).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(right(failure)));

        return _movieDetailsBloc(moviesRepository: _repository);
      },
      act: (MovieDetailsBloc bloc) => bloc.init(),
      expect: () => <MovieDetailsState>[
        const MovieDetailsState.loading(),
        MovieDetailsState.error(failure)
      ],
    );

    blocTest<MovieDetailsBloc, MovieDetailsState>(
      'emits loaded state',
      setUp: () {
        movie = FakeMovie();
        credits = FakeCredits();
        reccomendedMovies = FakeMovies();
      },
      build: () {
        final MockMoviesRepository _repository = MockMoviesRepository();

        when(() => _repository.getMovieDetails(any())).thenAnswer(
            (_) => Future<Either<Movie, NetworkFailure>>.value(left(movie)));
        when(() => _repository.getMovieCredits(any())).thenAnswer((_) =>
            Future<Either<Credits, NetworkFailure>>.value(left(credits)));
        when(() => _repository.getMovieRecommendations(any())).thenAnswer((_) =>
            Future<Either<List<Movie>, NetworkFailure>>.value(
                left(reccomendedMovies)));

        return _movieDetailsBloc(moviesRepository: _repository);
      },
      act: (MovieDetailsBloc bloc) => bloc.init(),
      expect: () => <MovieDetailsState>[
        const MovieDetailsState.loading(),
        MovieDetailsState.loaded(
          item: movie,
          credits: credits,
          reccomendations: reccomendedMovies,
        )
      ],
    );
  });
}
