
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_in_state.freezed.dart';

part 'local_sign_in_state.g.dart';

@freezed
class LocalSignInState with _$LocalSignInState {
  factory LocalSignInState({
    @Default([]) List<String> errorMessages
  }) = _LocalSignInState;

  factory LocalSignInState.fromJson(Map<String, dynamic> json) => _$LocalSignInStateFromJson(json);
}