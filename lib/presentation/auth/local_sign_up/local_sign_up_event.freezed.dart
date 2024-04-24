// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalSignUpEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? verifyEmail,
    TResult? Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? verifyEmail,
    TResult Function(String email, String password, String repeatPassword,
            String nickname, String verificationCode)?
        signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUpVerifyEmailEvent value) verifyEmail,
    required TResult Function(LocalSignUpRequestEvent value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult? Function(LocalSignUpRequestEvent value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult Function(LocalSignUpRequestEvent value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalSignUpEventCopyWith<LocalSignUpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSignUpEventCopyWith<$Res> {
  factory $LocalSignUpEventCopyWith(
          LocalSignUpEvent value, $Res Function(LocalSignUpEvent) then) =
      _$LocalSignUpEventCopyWithImpl<$Res, LocalSignUpEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$LocalSignUpEventCopyWithImpl<$Res, $Val extends LocalSignUpEvent>
    implements $LocalSignUpEventCopyWith<$Res> {
  _$LocalSignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSignUpVerifyEmailEventImplCopyWith<$Res>
    implements $LocalSignUpEventCopyWith<$Res> {
  factory _$$LocalSignUpVerifyEmailEventImplCopyWith(
          _$LocalSignUpVerifyEmailEventImpl value,
          $Res Function(_$LocalSignUpVerifyEmailEventImpl) then) =
      __$$LocalSignUpVerifyEmailEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LocalSignUpVerifyEmailEventImplCopyWithImpl<$Res>
    extends _$LocalSignUpEventCopyWithImpl<$Res,
        _$LocalSignUpVerifyEmailEventImpl>
    implements _$$LocalSignUpVerifyEmailEventImplCopyWith<$Res> {
  __$$LocalSignUpVerifyEmailEventImplCopyWithImpl(
      _$LocalSignUpVerifyEmailEventImpl _value,
      $Res Function(_$LocalSignUpVerifyEmailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LocalSignUpVerifyEmailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalSignUpVerifyEmailEventImpl implements LocalSignUpVerifyEmailEvent {
  const _$LocalSignUpVerifyEmailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LocalSignUpEvent.verifyEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUpVerifyEmailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignUpVerifyEmailEventImplCopyWith<_$LocalSignUpVerifyEmailEventImpl>
      get copyWith => __$$LocalSignUpVerifyEmailEventImplCopyWithImpl<
          _$LocalSignUpVerifyEmailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
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
    required TResult Function(LocalSignUpVerifyEmailEvent value) verifyEmail,
    required TResult Function(LocalSignUpRequestEvent value) signUp,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult? Function(LocalSignUpRequestEvent value)? signUp,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult Function(LocalSignUpRequestEvent value)? signUp,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class LocalSignUpVerifyEmailEvent implements LocalSignUpEvent {
  const factory LocalSignUpVerifyEmailEvent(final String email) =
      _$LocalSignUpVerifyEmailEventImpl;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$LocalSignUpVerifyEmailEventImplCopyWith<_$LocalSignUpVerifyEmailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSignUpRequestEventImplCopyWith<$Res>
    implements $LocalSignUpEventCopyWith<$Res> {
  factory _$$LocalSignUpRequestEventImplCopyWith(
          _$LocalSignUpRequestEventImpl value,
          $Res Function(_$LocalSignUpRequestEventImpl) then) =
      __$$LocalSignUpRequestEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String nickname,
      String verificationCode});
}

/// @nodoc
class __$$LocalSignUpRequestEventImplCopyWithImpl<$Res>
    extends _$LocalSignUpEventCopyWithImpl<$Res, _$LocalSignUpRequestEventImpl>
    implements _$$LocalSignUpRequestEventImplCopyWith<$Res> {
  __$$LocalSignUpRequestEventImplCopyWithImpl(
      _$LocalSignUpRequestEventImpl _value,
      $Res Function(_$LocalSignUpRequestEventImpl) _then)
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
    return _then(_$LocalSignUpRequestEventImpl(
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

class _$LocalSignUpRequestEventImpl implements LocalSignUpRequestEvent {
  const _$LocalSignUpRequestEventImpl(this.email, this.password,
      this.repeatPassword, this.nickname, this.verificationCode);

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
    return 'LocalSignUpEvent.signUp(email: $email, password: $password, repeatPassword: $repeatPassword, nickname: $nickname, verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUpRequestEventImpl &&
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
  _$$LocalSignUpRequestEventImplCopyWith<_$LocalSignUpRequestEventImpl>
      get copyWith => __$$LocalSignUpRequestEventImplCopyWithImpl<
          _$LocalSignUpRequestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) verifyEmail,
    required TResult Function(String email, String password,
            String repeatPassword, String nickname, String verificationCode)
        signUp,
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
    required TResult Function(LocalSignUpVerifyEmailEvent value) verifyEmail,
    required TResult Function(LocalSignUpRequestEvent value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult? Function(LocalSignUpRequestEvent value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUpVerifyEmailEvent value)? verifyEmail,
    TResult Function(LocalSignUpRequestEvent value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class LocalSignUpRequestEvent implements LocalSignUpEvent {
  const factory LocalSignUpRequestEvent(
      final String email,
      final String password,
      final String repeatPassword,
      final String nickname,
      final String verificationCode) = _$LocalSignUpRequestEventImpl;

  @override
  String get email;
  String get password;
  String get repeatPassword;
  String get nickname;
  String get verificationCode;
  @override
  @JsonKey(ignore: true)
  _$$LocalSignUpRequestEventImplCopyWith<_$LocalSignUpRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
