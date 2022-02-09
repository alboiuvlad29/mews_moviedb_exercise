part of 'movie_search_bloc.dart';

@immutable
abstract class MovieSearchEvent {}

class MovieSearchEventFetch extends MovieSearchEvent {
  MovieSearchEventFetch({
    required this.query,
    this.page = 1,
  });
  final String query;
  final int page;
}

class MovieSearchEventFetchFail extends MovieSearchEvent {
  MovieSearchEventFetchFail({required this.error});
  final NetworkFailure error;
}
