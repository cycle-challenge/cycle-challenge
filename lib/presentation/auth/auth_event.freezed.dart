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
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthVerifyEmailEvent value) verifyEmail,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignOutEvent value)? signOut,
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
abstract class _$$AuthVerifyEmailEventImplCopyWith<$Res> {
  factory _$$AuthVerifyEmailEventImplCopyWith(_$AuthVerifyEmailEventImpl value,
          $Res Function(_$AuthVerifyEmailEventImpl) then) =
      __$$AuthVerifyEmailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AuthVerifyEmailEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthVerifyEmailEventImpl>
    implements _$$AuthVerifyEmailEventImplCopyWith<$Res> {
  __$$AuthVerifyEmailEventImplCopyWithImpl(_$AuthVerifyEmailEventImpl _value,
      $Res Function(_$AuthVerifyEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthVerifyEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthVerifyEmailEventImpl implements AuthVerifyEmailEvent {
  const _$AuthVerifyEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.verifyEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthVerifyEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthVerifyEmailEventImplCopyWith<_$AuthVerifyEmailEventImpl>
      get copyWith =>
          __$$AuthVerifyEmailEventImplCopyWithImpl<_$AuthVerifyEmailEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function() signOut,
  }) {
    return verifyEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function()? signOut,
  }) {
    return verifyEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthVerifyEmailEvent value) verifyEmail,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class AuthVerifyEmailEvent implements AuthEvent {
  const factory AuthVerifyEmailEvent(final String email) =
      _$AuthVerifyEmailEventImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$AuthVerifyEmailEventImplCopyWith<_$AuthVerifyEmailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignUpEventImplCopyWith<$Res> {
  factory _$$AuthSignUpEventImplCopyWith(_$AuthSignUpEventImpl value,
          $Res Function(_$AuthSignUpEventImpl) then) =
      __$$AuthSignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String nickname,
      String verificationCode});
}

/// @nodoc
class __$$AuthSignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignUpEventImpl>
    implements _$$AuthSignUpEventImplCopyWith<$Res> {
  __$$AuthSignUpEventImplCopyWithImpl(
      _$AuthSignUpEventImpl _value, $Res Function(_$AuthSignUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? repeatPassword = null,
    Object? nickname = null,
    Object? verificationCode = null,
  }) {
    return _then(_$AuthSignUpEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == repeatPassword
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpEventImpl implements AuthSignUpEvent {
  const _$AuthSignUpEventImpl(this.email, this.password, this.repeatPassword,
      this.nickname, this.verificationCode);

  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final String nickname;
  @override
  final String verificationCode;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, repeatPassword: $repeatPassword, nickname: $nickname, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.repeatPassword, repeatPassword) ||
                other.repeatPassword == repeatPassword) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, repeatPassword, nickname, verificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpEventImplCopyWith<_$AuthSignUpEventImpl> get copyWith =>
      __$$AuthSignUpEventImplCopyWithImpl<_$AuthSignUpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function() signOut,
  }) {
    return signUp(email, password, repeatPassword, nickname, verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function()? signOut,
  }) {
    return signUp?.call(
        email, password, repeatPassword, nickname, verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(
          email, password, repeatPassword, nickname, verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthVerifyEmailEvent value) verifyEmail,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpEvent implements AuthEvent {
  const factory AuthSignUpEvent(
      final String email,
      final String password,
      final String repeatPassword,
      final String nickname,
      final String verificationCode) = _$AuthSignUpEventImpl;

  String get email;
  String get password;
  String get repeatPassword;
  String get nickname;
  String get verificationCode;
  @JsonKey(ignore: true)
  _$$AuthSignUpEventImplCopyWith<_$AuthSignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignInEventImplCopyWith<$Res> {
  factory _$$AuthSignInEventImplCopyWith(_$AuthSignInEventImpl value,
          $Res Function(_$AuthSignInEventImpl) then) =
      __$$AuthSignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInEventImpl>
    implements _$$AuthSignInEventImplCopyWith<$Res> {
  __$$AuthSignInEventImplCopyWithImpl(
      _$AuthSignInEventImpl _value, $Res Function(_$AuthSignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInEventImpl implements AuthSignInEvent {
  const _$AuthSignInEventImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInEventImplCopyWith<_$AuthSignInEventImpl> get copyWith =>
      __$$AuthSignInEventImplCopyWithImpl<_$AuthSignInEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function() signOut,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthVerifyEmailEvent value) verifyEmail,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignOutEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class AuthSignInEvent implements AuthEvent {
  const factory AuthSignInEvent(final String email, final String password) =
      _$AuthSignInEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthSignInEventImplCopyWith<_$AuthSignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function()? signOut,
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
    required TResult Function(AuthVerifyEmailEvent value) verifyEmail,
    required TResult Function(AuthSignUpEvent value) signUp,
    required TResult Function(AuthSignInEvent value) signIn,
    required TResult Function(AuthSignOutEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult? Function(AuthSignUpEvent value)? signUp,
    TResult? Function(AuthSignInEvent value)? signIn,
    TResult? Function(AuthSignOutEvent value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthVerifyEmailEvent value)? verifyEmail,
    TResult Function(AuthSignUpEvent value)? signUp,
    TResult Function(AuthSignInEvent value)? signIn,
    TResult Function(AuthSignOutEvent value)? signOut,
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
