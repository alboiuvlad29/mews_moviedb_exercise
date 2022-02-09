import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';

import '../../core/domain/movie.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBlocArgs {
  MovieDetailsBlocArgs({required this.id});
  final int id;
}

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(
    this._args,
    this._repository,
  ) : super(const MovieDetailsState.initial()) {
    on<MovieDetailsLoadEvent>(_onLoading);
    on<MovieDetailsLoadingFailedEvent>(_onFailure);
  }
  final MovieDetailsBlocArgs _args;
  final MoviesRepository _repository;

  void init() => add(MovieDetailsLoadEvent());

  Future<void> _onLoading(
      MovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    emit(const MovieDetailsState.loading());
    Movie? movie;
    Credits? credits;
    List<Movie> recommendations = <Movie>[];

    Future<Either<Movie, NetworkFailure>> _loadMovieDetails() =>
        _repository.getMovieDetails(_args.id);
    Future<Either<Credits, NetworkFailure>> _loadMovieCredits() =>
        _repository.getMovieCredits(_args.id);
    Future<Either<List<Movie>, NetworkFailure>> _loadMovieReccomendations() =>
        _repository.getMovieRecommendations(_args.id);

    try {
      await Future.wait(
        <Future<void>>[
          _loadMovieDetails().then(
            (Either<Movie, NetworkFailure> value) => value.fold(
              (Movie item) => movie = item,
              (NetworkFailure failure) => throw failure,
            ),
          ),
          _loadMovieCredits().then(
            (Either<Credits, NetworkFailure> value) => value.fold(
              (Credits item) => credits = item,
              (NetworkFailure failure) => throw failure,
            ),
          ),
          _loadMovieReccomendations().then(
            (Either<List<Movie>, NetworkFailure> value) => value.fold(
              (List<Movie> item) => recommendations = item,
              (NetworkFailure failure) => throw failure,
            ),
          ),
        ],
      );
    } on NetworkFailure catch (e) {
      emit(MovieDetailsState.error(e));
    }

    if (movie != null && credits != null) {
      emit(MovieDetailsState.loaded(
          item: movie!, credits: credits!, reccomendations: recommendations));
    }
  }

  void _onFailure(
      MovieDetailsLoadingFailedEvent event, Emitter<MovieDetailsState> emit) {
    emit(MovieDetailsState.error(event.error));
  }
}
