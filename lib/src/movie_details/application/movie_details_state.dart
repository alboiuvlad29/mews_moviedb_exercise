part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;
  const factory MovieDetailsState.loaded({
    required Movie item,
    required Credits credits,
    @Default(<Movie>[]) List<Movie> reccomendations,
  }) = _Loaded;

  const factory MovieDetailsState.loading() = _Loading;

  const factory MovieDetailsState.error(NetworkFailure error) = _Error;
}
