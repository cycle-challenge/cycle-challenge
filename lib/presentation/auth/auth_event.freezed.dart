// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() googleSignIn,
    required TResult Function() deleteGoogleAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? googleSignIn,
    TResult? Function()? deleteGoogleAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? googleSignIn,
    TResult Function()? deleteGoogleAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(_GoogleSignIn value) googleSignIn,
    required TResult Function(_DeleteGoogleAccount value) deleteGoogleAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
    TResult? Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    TResult Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthSignOutEventImplCopyWith<$Res> {
  factory _$$AuthSignOutEventImplCopyWith(_$AuthSignOutEventImpl value,
          $Res Function(_$AuthSignOutEventImpl) then) =
      __$$AuthSignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSignOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignOutEventImpl>
    implements _$$AuthSignOutEventImplCopyWith<$Res> {
  __$$AuthSignOutEventImplCopyWithImpl(_$AuthSignOutEventImpl _value,
      $Res Function(_$AuthSignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSignOutEventImpl implements AuthSignOutEvent {
  const _$AuthSignOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() googleSignIn,
    required TResult Function() deleteGoogleAccount,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? googleSignIn,
    TResult? Function()? deleteGoogleAccount,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? googleSignIn,
    TResult Function()? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(_GoogleSignIn value) googleSignIn,
    required TResult Function(_DeleteGoogleAccount value) deleteGoogleAccount,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
    TResult? Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    TResult Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthSignOutEvent implements AuthEvent {
  const factory AuthSignOutEvent() = _$AuthSignOutEventImpl;
}

/// @nodoc
abstract class _$$GoogleSignInImplCopyWith<$Res> {
  factory _$$GoogleSignInImplCopyWith(
          _$GoogleSignInImpl value, $Res Function(_$GoogleSignInImpl) then) =
      __$$GoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleSignInImpl>
    implements _$$GoogleSignInImplCopyWith<$Res> {
  __$$GoogleSignInImplCopyWithImpl(
      _$GoogleSignInImpl _value, $Res Function(_$GoogleSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInImpl implements _GoogleSignIn {
  const _$GoogleSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.googleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() googleSignIn,
    required TResult Function() deleteGoogleAccount,
  }) {
    return googleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? googleSignIn,
    TResult? Function()? deleteGoogleAccount,
  }) {
    return googleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? googleSignIn,
    TResult Function()? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(_GoogleSignIn value) googleSignIn,
    required TResult Function(_DeleteGoogleAccount value) deleteGoogleAccount,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
    TResult? Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    TResult Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignIn implements AuthEvent {
  const factory _GoogleSignIn() = _$GoogleSignInImpl;
}

/// @nodoc
abstract class _$$DeleteGoogleAccountImplCopyWith<$Res> {
  factory _$$DeleteGoogleAccountImplCopyWith(_$DeleteGoogleAccountImpl value,
          $Res Function(_$DeleteGoogleAccountImpl) then) =
      __$$DeleteGoogleAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteGoogleAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$DeleteGoogleAccountImpl>
    implements _$$DeleteGoogleAccountImplCopyWith<$Res> {
  __$$DeleteGoogleAccountImplCopyWithImpl(_$DeleteGoogleAccountImpl _value,
      $Res Function(_$DeleteGoogleAccountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteGoogleAccountImpl implements _DeleteGoogleAccount {
  const _$DeleteGoogleAccountImpl();

  @override
  String toString() {
    return 'AuthEvent.deleteGoogleAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteGoogleAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() googleSignIn,
    required TResult Function() deleteGoogleAccount,
  }) {
    return deleteGoogleAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signOut,
    TResult? Function()? googleSignIn,
    TResult? Function()? deleteGoogleAccount,
  }) {
    return deleteGoogleAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? googleSignIn,
    TResult Function()? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (deleteGoogleAccount != null) {
      return deleteGoogleAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignOutEvent value) signOut,
    required TResult Function(_GoogleSignIn value) googleSignIn,
    required TResult Function(_DeleteGoogleAccount value) deleteGoogleAccount,
  }) {
    return deleteGoogleAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignOutEvent value)? signOut,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
    TResult? Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
  }) {
    return deleteGoogleAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignOutEvent value)? signOut,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    TResult Function(_DeleteGoogleAccount value)? deleteGoogleAccount,
    required TResult orElse(),
  }) {
    if (deleteGoogleAccount != null) {
      return deleteGoogleAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteGoogleAccount implements AuthEvent {
  const factory _DeleteGoogleAccount() = _$DeleteGoogleAccountImpl;
}
