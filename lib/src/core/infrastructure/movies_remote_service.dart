import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/api_result.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/credits_dto.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movie_dto.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_filter_type.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/paged_list_dto.dart';

class MoviesRemoteService {
  MoviesRemoteService(
    Dio dio, {
    required this.baseUrl,
    required this.apiKey,
  }) {
    _dio = dio
      ..options.baseUrl = baseUrl
      ..interceptors.add(HttpFormatter());
  }
  late Dio _dio;
  final String baseUrl;
  final String apiKey;

  // String _addKey(String endpoint) => '$endpoint?api_key=$apiKey';

  Map<String, dynamic> _addRequiredParams({
    Map<String, dynamic> params = const <String, dynamic>{},
  }) =>
      <String, dynamic>{}
        ..addAll(<String, dynamic>{'api_key': apiKey}..addAll(params));

  Future<ApiResult<MovieDTO>> getMovieDetails(int id) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get<Map<String, dynamic>>(
        'movie/$id',
        queryParameters: _addRequiredParams(),
      );

      return ApiResult<MovieDTO>.success(MovieDTO.fromJson(response.data!));
    } on DioError catch (e) {
      return ApiResult<MovieDTO>.error(NetworkFailure.fromDioError(e));
    }
  }

  Future<ApiResult<PagedListDTO<MovieDTO>>> getMovieRecommendations(
      int id) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get<Map<String, dynamic>>(
        'movie/$id/recommendations',
        queryParameters: _addRequiredParams(),
      );

      return ApiResult<PagedListDTO<MovieDTO>>.success(
          PagedListDTO<MovieDTO>.fromJson(
              response.data!,
              (Object? data) =>
                  MovieDTO.fromJson(data! as Map<String, dynamic>)));
    } on DioError catch (e) {
      return ApiResult<PagedListDTO<MovieDTO>>.error(
          NetworkFailure.fromDioError(e));
    }
  }

  Future<ApiResult<CreditsDTO>> getMovieCredits(int id) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get<Map<String, dynamic>>(
        'movie/$id/credits',
        queryParameters: _addRequiredParams(),
      );

      return ApiResult<CreditsDTO>.success(CreditsDTO.fromJson(response.data!));
    } on DioError catch (e) {
      return ApiResult<CreditsDTO>.error(NetworkFailure.fromDioError(e));
    }
  }

  Future<ApiResult<PagedListDTO<MovieDTO>>> getMovieFilered(
    MoviesFilterType type, {
    int page = 1,
  }) async {
    assert(page > 0, 'page must be greater than 1');
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get<Map<String, dynamic>>(
        type.appendtoPath('movie'),
        queryParameters:
            _addRequiredParams(params: <String, dynamic>{'page': page}),
      );

      return ApiResult<PagedListDTO<MovieDTO>>.success(
          PagedListDTO<MovieDTO>.fromJson(
              response.data!,
              (Object? data) =>
                  MovieDTO.fromJson(data! as Map<String, dynamic>)));
    } on DioError catch (e) {
      return ApiResult<PagedListDTO<MovieDTO>>.error(
          NetworkFailure.fromDioError(e));
    }
  }

  Future<ApiResult<PagedListDTO<MovieDTO>>> searchMovies({
    required String query,
    int page = 1,
  }) async {
    assert(page > 0, 'page must be greater than 1');
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.get<Map<String, dynamic>>(
        'search/movie',
        queryParameters: _addRequiredParams(params: <String, dynamic>{
          'page': page,
          'query': query,
        }),
      );

      return ApiResult<PagedListDTO<MovieDTO>>.success(
          PagedListDTO<MovieDTO>.fromJson(
              response.data!,
              (Object? data) =>
                  MovieDTO.fromJson(data! as Map<String, dynamic>)));
    } on DioError catch (e) {
      return ApiResult<PagedListDTO<MovieDTO>>.error(
          NetworkFailure.fromDioError(e));
    }
  }
}
