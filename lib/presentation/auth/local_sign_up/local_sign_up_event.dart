
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_up_event.freezed.dart';

@freezed
abstract class LocalSignUpEvent with _$LocalSignUpEvent {
  const factory  LocalSignUpEvent.verifyEmail(String email) = LocalSignUpVerifyEmailEvent;
  const factory LocalSignUpEvent.signUp(String email, String password, String repeatPassword, String nickname, String verificationCode) = LocalSignUpRequestEvent;
}