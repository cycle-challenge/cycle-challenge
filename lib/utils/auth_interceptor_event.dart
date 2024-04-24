import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_interceptor_event.freezed.dart';

@freezed
abstract class AuthInterceptorEvent<T> with _$AuthInterceptorEvent<T> {
  const factory AuthInterceptorEvent.authorizationExpired() =  AuthInterceptorAuthorizationExpiredEvent;
}