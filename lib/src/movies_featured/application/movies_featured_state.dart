part of 'movies_featured_bloc.dart';

@freezed
class MoviesFeaturedState with _$MoviesFeaturedState {
  const factory MoviesFeaturedState({
    @Default(<Movie>[]) List<Movie> popularMovies,
    @Default(<Movie>[]) List<Movie> nowPlayingMovies,
    @Default(<Movie>[]) List<Movie> upcomingMovies,
    @Default(<Movie>[]) List<Movie> topRatedMovies,
  }) = _MoviesFeaturedState;

  const factory MoviesFeaturedState.loading() = _Loading;

  const factory MoviesFeaturedState.error(NetworkFailure error) = _Error;
}
