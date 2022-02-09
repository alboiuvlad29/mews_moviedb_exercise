part of 'movie_search_bloc.dart';

@freezed
class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @Default(<Movie>[]) List<Movie> items,
    @Default(0) int pageSize,
    @Default(0) int currentPage,
    @Default('') String query,
    @Default(false) bool loading,
    @Default(false) bool isLastPage,
    NetworkFailure? error,
  }) = _MovieSearchState;
  const MovieSearchState._();

  factory MovieSearchState.initial() => const MovieSearchState(
        items: <Movie>[],
        pageSize: 0,
        currentPage: 0,
        query: '',
        loading: false,
        error: null,
      );

  int? get nextPage => isLastPage ? null : currentPage + 1;
}
