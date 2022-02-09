import 'package:dartz/dartz.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/credits_dto.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movie_dto.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_filter_type.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_remote_service.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/paged_list_dto.dart';

import 'api_result.dart';

class MoviesRepository {
  MoviesRepository(this._remoteService);

  final MoviesRemoteService _remoteService;

  /// Get movie details for an id
  Future<Either<Movie, NetworkFailure>> getMovieDetails(int id) async {
    final ApiResult<MovieDTO> response =
        await _remoteService.getMovieDetails(id);
    return response.when(
        success: (MovieDTO dto) => left(dto.toDomain()),
        error: (NetworkFailure error) => right(error));
  }

  /// Get movie credits for an id
  Future<Either<Credits, NetworkFailure>> getMovieCredits(int id) async {
    final ApiResult<CreditsDTO> response =
        await _remoteService.getMovieCredits(id);
    return response.when(
        success: (CreditsDTO dto) => left(dto.toDomain()),
        error: (NetworkFailure error) => right(error));
  }

  /// Get movies reccomendations for a movie
  Future<Either<List<Movie>, NetworkFailure>> getMovieRecommendations(
    int id,
  ) async {
    final ApiResult<PagedListDTO<MovieDTO>> response =
        await _remoteService.getMovieRecommendations(id);
    return response.when(
        success: (PagedListDTO<MovieDTO> dto) =>
            left(dto.toDomain<Movie>((MovieDTO dtoItem) => dtoItem.toDomain())),
        error: (NetworkFailure error) => right(error));
  }

  /// Get filtered movies
  Future<Either<List<Movie>, NetworkFailure>> getMovieFilered(
      MoviesFilterType type,
      {int page = 1}) async {
    final ApiResult<PagedListDTO<MovieDTO>> response =
        await _remoteService.getMovieFilered(type, page: page);
    return response.when(
        success: (PagedListDTO<MovieDTO> dto) =>
            left(dto.toDomain<Movie>((MovieDTO dtoItem) => dtoItem.toDomain())),
        error: (NetworkFailure error) => right(error));
  }

  /// Search movies
  Future<Either<List<Movie>, NetworkFailure>> searchMovies({
    required String query,
    int page = 1,
  }) async {
    final ApiResult<PagedListDTO<MovieDTO>> response =
        await _remoteService.searchMovies(query: query, page: page);
    return response.when(
        success: (PagedListDTO<MovieDTO> dto) =>
            left(dto.toDomain<Movie>((MovieDTO dtoItem) => dtoItem.toDomain())),
        error: (NetworkFailure error) => right(error));
  }
}
