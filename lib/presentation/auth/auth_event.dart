
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.verifyEmail(String email) = AuthVerifyEmailEvent;
  const factory AuthEvent.signUp(String email, String password, String repeatPassword, String nickname, String verificationCode) = AuthSignUpEvent;
  const factory AuthEvent.signIn(String email, String password) = AuthSignInEvent;
  const factory AuthEvent.signOut() = AuthSignOutEvent;
}