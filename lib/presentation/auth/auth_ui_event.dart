
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_ui_event.freezed.dart';

@freezed
abstract class AuthUIEvent with _$AuthUIEvent {
  const factory AuthUIEvent.showSnackBar(String message) = AuthShowSnackBarUIEvent;
  const factory AuthUIEvent.signUpSuccess(String message) = AuthSignUpSuccessUIEvent;
}