import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_filter_type.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';

part 'movies_featured_bloc.freezed.dart';
part 'movies_featured_event.dart';
part 'movies_featured_state.dart';

class MoviesFeaturedBloc
    extends Bloc<MoviesFeaturedEvent, MoviesFeaturedState> {
  MoviesFeaturedBloc(this._moviesRepository)
      : super(const MoviesFeaturedState()) {
    on<MoviesFeaturedLoadEvent>(_loadAllMovies);
    on<MoviesFeaturedLoadingFailure>(_onFailure);
  }
  final MoviesRepository _moviesRepository;

  Future<void> _loadAllMovies(
      MoviesFeaturedEvent event, Emitter<MoviesFeaturedState> emit) async {
    emit(const MoviesFeaturedState.loading());

    final List<Movie> popular = <Movie>[];
    final List<Movie> nowPlaying = <Movie>[];
    final List<Movie> upcoming = <Movie>[];
    final List<Movie> topRated = <Movie>[];

    await Future.wait(<Future<void>>[
      _getMovies(MoviesFilterType.popular)
          .then((List<Movie> value) => popular.addAll(value)),
      _getMovies(MoviesFilterType.nowPlaying)
          .then((List<Movie> value) => nowPlaying.addAll(value)),
      _getMovies(MoviesFilterType.upcoming)
          .then((List<Movie> value) => upcoming.addAll(value)),
      _getMovies(MoviesFilterType.topRated)
          .then((List<Movie> value) => topRated.addAll(value)),
    ]);
    emit(MoviesFeaturedState(
      popularMovies: popular,
      nowPlayingMovies: nowPlaying,
      upcomingMovies: upcoming,
      topRatedMovies: topRated,
    ));
  }

  Future<List<Movie>> _getMovies(MoviesFilterType type) async {
    final Either<List<Movie>, NetworkFailure> response =
        await _moviesRepository.getMovieFilered(type);
    return response.fold(
      (List<Movie> movies) => movies,
      (NetworkFailure error) {
        addError(error);
        return <Movie>[];
      },
    );
  }

  Future<void> init() async {
    add(MoviesFeaturedLoadEvent());
  }

  Future<void> _onFailure(MoviesFeaturedLoadingFailure event,
      Emitter<MoviesFeaturedState> emit) async {
    emit(MoviesFeaturedState.error(event.error));
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    if (error is NetworkFailure) {
      add(MoviesFeaturedLoadingFailure(error));
    }
    super.onError(error, stackTrace);
  }
}
