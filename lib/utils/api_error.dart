import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
abstract class ApiError with _$ApiError {
  const factory ApiError.targetError(String code, Map<String, String> errors) =
      ApiTargetError;
  const factory ApiError.error(String? code, String message) = ApiCodeError;

  factory ApiError.fromResponse(Response<dynamic>? response) {
    if (response == null || response.statusCode.toString().startsWith("5")) {
      return const ApiError.error(null, "서버와 통신 중 에러가 발생했습니다.");
    }

    final Map<String, dynamic> body = response.data;

    if (!body.containsKey('code')) {
      return const ApiError.error(null, "서버와 통신 중 에러가 발생했습니다.");
    }

    if (body['code'] == 'INVALID_ARGUMENT') {
      final Map<String, String> errors = {};
      List.of(body['data']).forEach((e) {
        errors[e['target']] = e['message'];
      });

      return ApiError.targetError(body['code'], errors);
    }

    if (body['data'].containsKey('target')) {
      return ApiError.targetError(
          body['code'], {body['data']['target']: body['data']['message']});
    }

    return ApiError.error(body['code'], body['data']['message']);
  }
}
