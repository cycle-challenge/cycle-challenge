
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'auth_state.freezed.dart';

part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(null) Member? member
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}