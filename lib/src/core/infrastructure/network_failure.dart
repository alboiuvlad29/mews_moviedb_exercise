import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/dio_extension.dart';

part 'network_failure.freezed.dart';

/// A class that represents a failure in the network layer.
@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure(String message) = _NetworkFailure;
  const NetworkFailure._();

  factory NetworkFailure.fromDioError(DioError error) {
    if (error.isNoConnectionError) {
      return const NetworkFailure('No Internet Connection');
    }
    switch (error.type) {
      case DioErrorType.cancel:
        return const NetworkFailure('Request to API server was cancelled');
      case DioErrorType.connectTimeout:
        return const NetworkFailure('Connection timeout with API server');
      case DioErrorType.receiveTimeout:
        return const NetworkFailure(
            'Receive timeout in connection with API server');
      case DioErrorType.response:
        return NetworkFailure(
            'Received invalid status code: ${error.response?.statusCode}');
      case DioErrorType.sendTimeout:
        return const NetworkFailure(
            'Send timeout in connection with API server');
      default:
        return const NetworkFailure(
            'An error occurred while communicating to API server');
    }
  }
}
