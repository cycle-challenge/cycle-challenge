
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError with _$ApiError {
  factory ApiError(
      {required int status,
      required String code,
      required String message,
      String? target}) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
