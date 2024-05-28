
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_event.freezed.dart';

@freezed
abstract class AuthUiEvent with _$AuthUiEvent {
  const factory AuthUiEvent.startSocialSignIn(String uri) = _StartSocialSignIn;
}