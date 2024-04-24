import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_in_event.freezed.dart';

@freezed
abstract class LocalSignInEvent with _$LocalSignInEvent {
  const factory LocalSignInEvent.signIn(String email, String password) = LocalSignInRequestEvent;
}