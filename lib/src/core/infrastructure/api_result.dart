import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';

part 'api_result.freezed.dart';

/// Represents the result of an API call.
@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = _Success<T>;
  const factory ApiResult.error(NetworkFailure failure) = _Failure<T>;

  const ApiResult._();
}
