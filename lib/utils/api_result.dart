import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = ApiResultSuccess;
  const factory ApiResult.error(List<ApiError> errors) = ApiResultError;
  const factory ApiResult.unhandledError(String message) =
      ApiResultUnHandledError;

  factory ApiResult.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) mapperFn) {
    if (json.containsKey('errors')) {
      final errors =
          List.of(json['errors']).map((e) => ApiError.fromJson(e)).toList();
      return ApiResult.error(errors);
    }

    return ApiResult<T>.success(mapperFn(json['data']));
  }
}
