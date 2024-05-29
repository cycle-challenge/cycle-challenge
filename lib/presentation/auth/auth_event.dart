
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signOut() = AuthSignOutEvent;
  const factory AuthEvent.googleSignIn() = _GoogleSignIn;
  const factory AuthEvent.deleteGoogleAccount() = _DeleteGoogleAccount;
}