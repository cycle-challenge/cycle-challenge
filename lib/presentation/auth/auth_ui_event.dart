
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'auth_ui_event.freezed.dart';

@freezed
abstract class AuthUIEvent with _$AuthUIEvent {
  const factory AuthUIEvent.showSnackBar(String message) = AuthShowSnackBarUIEvent;
  const factory AuthUIEvent.signUpSuccess(String message) = AuthSignUpSuccessUIEvent;
  const factory AuthUIEvent.autoSignIn(String nickname) = AuthAutoSignInUIEvent;
}