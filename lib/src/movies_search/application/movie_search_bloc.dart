import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/transformers.dart';

part 'movie_search_bloc.freezed.dart';
part 'movie_search_event.dart';
part 'movie_search_state.dart';

class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  MovieSearchBloc(this._moviesRepository) : super(MovieSearchState.initial()) {
    on<MovieSearchEventFetch>(_onFetchEvent,
        transformer: debounce(const Duration(milliseconds: 300)));
  }

  final MoviesRepository _moviesRepository;

  void onNewPageRequest(int page) {
    if (!state.isLastPage) {
      add(MovieSearchEventFetch(page: page, query: state.query));
    }
  }

  void search(String query) {
    add(MovieSearchEventFetch(page: 1, query: query));
  }

  Future<void> _onFetchEvent(
      MovieSearchEventFetch event, Emitter<MovieSearchState> emit) async {
    if (event.query.isEmpty) {
      emit(MovieSearchState.initial());
      return;
    }

    if (state.query != event.query) {
      emit(MovieSearchState.initial());
    }

    emit(state.copyWith(
      loading: state.items.isEmpty,
      query: event.query,
    ));
    await _moviesRepository
        .searchMovies(query: state.query, page: event.page)
        .then((Either<List<Movie>, NetworkFailure> result) {
      emit(
        result.fold(
          (List<Movie> newItems) {
            final bool isLastPage = newItems.length < state.pageSize;
            return state.copyWith(
                items: <Movie>[...state.items, ...newItems],
                pageSize: state.pageSize > 0 ? state.pageSize : newItems.length,
                isLastPage: isLastPage,
                currentPage: event.page,
                loading: false);
          },
          (NetworkFailure failure) =>
              state.copyWith(error: failure, loading: false),
        ),
      );
    });
  }

  EventTransformer<MovieSearchEvent> debounce<MovieSearchEvent>(
      Duration duration) {
    return (Stream<MovieSearchEvent> events,
            Stream<MovieSearchEvent> Function(MovieSearchEvent) mapper) =>
        events.debounceTime(duration).flatMap(mapper);
  }
}
