// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_interceptor_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthInterceptorEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorizationExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorizationExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorizationExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInterceptorAuthorizationExpiredEvent<T> value)
        authorizationExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInterceptorAuthorizationExpiredEvent<T> value)?
        authorizationExpired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInterceptorAuthorizationExpiredEvent<T> value)?
        authorizationExpired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInterceptorEventCopyWith<T, $Res> {
  factory $AuthInterceptorEventCopyWith(AuthInterceptorEvent<T> value,
          $Res Function(AuthInterceptorEvent<T>) then) =
      _$AuthInterceptorEventCopyWithImpl<T, $Res, AuthInterceptorEvent<T>>;
}

/// @nodoc
class _$AuthInterceptorEventCopyWithImpl<T, $Res,
        $Val extends AuthInterceptorEvent<T>>
    implements $AuthInterceptorEventCopyWith<T, $Res> {
  _$AuthInterceptorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInterceptorAuthorizationExpiredEventImplCopyWith<T,
    $Res> {
  factory _$$AuthInterceptorAuthorizationExpiredEventImplCopyWith(
          _$AuthInterceptorAuthorizationExpiredEventImpl<T> value,
          $Res Function(_$AuthInterceptorAuthorizationExpiredEventImpl<T>)
              then) =
      __$$AuthInterceptorAuthorizationExpiredEventImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AuthInterceptorAuthorizationExpiredEventImplCopyWithImpl<T, $Res>
    extends _$AuthInterceptorEventCopyWithImpl<T, $Res,
        _$AuthInterceptorAuthorizationExpiredEventImpl<T>>
    implements
        _$$AuthInterceptorAuthorizationExpiredEventImplCopyWith<T, $Res> {
  __$$AuthInterceptorAuthorizationExpiredEventImplCopyWithImpl(
      _$AuthInterceptorAuthorizationExpiredEventImpl<T> _value,
      $Res Function(_$AuthInterceptorAuthorizationExpiredEventImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInterceptorAuthorizationExpiredEventImpl<T>
    implements AuthInterceptorAuthorizationExpiredEvent<T> {
  const _$AuthInterceptorAuthorizationExpiredEventImpl();

  @override
  String toString() {
    return 'AuthInterceptorEvent<$T>.authorizationExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInterceptorAuthorizationExpiredEventImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorizationExpired,
  }) {
    return authorizationExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authorizationExpired,
  }) {
    return authorizationExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorizationExpired,
    required TResult orElse(),
  }) {
    if (authorizationExpired != null) {
      return authorizationExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInterceptorAuthorizationExpiredEvent<T> value)
        authorizationExpired,
  }) {
    return authorizationExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInterceptorAuthorizationExpiredEvent<T> value)?
        authorizationExpired,
  }) {
    return authorizationExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInterceptorAuthorizationExpiredEvent<T> value)?
        authorizationExpired,
    required TResult orElse(),
  }) {
    if (authorizationExpired != null) {
      return authorizationExpired(this);
    }
    return orElse();
  }
}

abstract class AuthInterceptorAuthorizationExpiredEvent<T>
    implements AuthInterceptorEvent<T> {
  const factory AuthInterceptorAuthorizationExpiredEvent() =
      _$AuthInterceptorAuthorizationExpiredEventImpl<T>;
}
