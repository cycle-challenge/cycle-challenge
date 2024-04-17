
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_up_state.freezed.dart';

part 'local_sign_up_state.g.dart';

@freezed
class LocalSignUpState with _$LocalSignUpState {
  factory LocalSignUpState({
    required List<String> errorMessages
  }) = _LocalSignUpState;

  factory LocalSignUpState.fromJson(Map<String, dynamic> json) => _$LocalSignUpStateFromJson(json);
}