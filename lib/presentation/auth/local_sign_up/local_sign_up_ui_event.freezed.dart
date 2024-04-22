// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sign_up_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalSignUpUIEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String target, String message) showInputError,
    required TResult Function(String nickname) success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function() verifyEmailSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String target, String message)? showInputError,
    TResult? Function(String nickname)? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function()? verifyEmailSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String target, String message)? showInputError,
    TResult Function(String nickname)? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function()? verifyEmailSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUphowInputErrorUIEvent<T> value)
        showInputError,
    required TResult Function(LocalSignUpSuccessUIEvent<T> value) success,
    required TResult Function(LocalSignUpLoadingUIEvent<T> value) loading,
    required TResult Function(LocalVerifyEmailSentEvent<T> value)
        verifyEmailSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult? Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult? Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult? Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSignUpUIEventCopyWith<T, $Res> {
  factory $LocalSignUpUIEventCopyWith(LocalSignUpUIEvent<T> value,
          $Res Function(LocalSignUpUIEvent<T>) then) =
      _$LocalSignUpUIEventCopyWithImpl<T, $Res, LocalSignUpUIEvent<T>>;
}

/// @nodoc
class _$LocalSignUpUIEventCopyWithImpl<T, $Res,
        $Val extends LocalSignUpUIEvent<T>>
    implements $LocalSignUpUIEventCopyWith<T, $Res> {
  _$LocalSignUpUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalSignUphowInputErrorUIEventImplCopyWith<T, $Res> {
  factory _$$LocalSignUphowInputErrorUIEventImplCopyWith(
          _$LocalSignUphowInputErrorUIEventImpl<T> value,
          $Res Function(_$LocalSignUphowInputErrorUIEventImpl<T>) then) =
      __$$LocalSignUphowInputErrorUIEventImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String target, String message});
}

/// @nodoc
class __$$LocalSignUphowInputErrorUIEventImplCopyWithImpl<T, $Res>
    extends _$LocalSignUpUIEventCopyWithImpl<T, $Res,
        _$LocalSignUphowInputErrorUIEventImpl<T>>
    implements _$$LocalSignUphowInputErrorUIEventImplCopyWith<T, $Res> {
  __$$LocalSignUphowInputErrorUIEventImplCopyWithImpl(
      _$LocalSignUphowInputErrorUIEventImpl<T> _value,
      $Res Function(_$LocalSignUphowInputErrorUIEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? message = null,
  }) {
    return _then(_$LocalSignUphowInputErrorUIEventImpl<T>(
      null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalSignUphowInputErrorUIEventImpl<T>
    implements LocalSignUphowInputErrorUIEvent<T> {
  const _$LocalSignUphowInputErrorUIEventImpl(this.target, this.message);

  @override
  final String target;
  @override
  final String message;

  @override
  String toString() {
    return 'LocalSignUpUIEvent<$T>.showInputError(target: $target, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUphowInputErrorUIEventImpl<T> &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, target, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignUphowInputErrorUIEventImplCopyWith<T,
          _$LocalSignUphowInputErrorUIEventImpl<T>>
      get copyWith => __$$LocalSignUphowInputErrorUIEventImplCopyWithImpl<T,
          _$LocalSignUphowInputErrorUIEventImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String target, String message) showInputError,
    required TResult Function(String nickname) success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function() verifyEmailSent,
  }) {
    return showInputError(target, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String target, String message)? showInputError,
    TResult? Function(String nickname)? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function()? verifyEmailSent,
  }) {
    return showInputError?.call(target, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String target, String message)? showInputError,
    TResult Function(String nickname)? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function()? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (showInputError != null) {
      return showInputError(target, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUphowInputErrorUIEvent<T> value)
        showInputError,
    required TResult Function(LocalSignUpSuccessUIEvent<T> value) success,
    required TResult Function(LocalSignUpLoadingUIEvent<T> value) loading,
    required TResult Function(LocalVerifyEmailSentEvent<T> value)
        verifyEmailSent,
  }) {
    return showInputError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult? Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult? Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult? Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
  }) {
    return showInputError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (showInputError != null) {
      return showInputError(this);
    }
    return orElse();
  }
}

abstract class LocalSignUphowInputErrorUIEvent<T>
    implements LocalSignUpUIEvent<T> {
  const factory LocalSignUphowInputErrorUIEvent(
          final String target, final String message) =
      _$LocalSignUphowInputErrorUIEventImpl<T>;

  String get target;
  String get message;
  @JsonKey(ignore: true)
  _$$LocalSignUphowInputErrorUIEventImplCopyWith<T,
          _$LocalSignUphowInputErrorUIEventImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSignUpSuccessUIEventImplCopyWith<T, $Res> {
  factory _$$LocalSignUpSuccessUIEventImplCopyWith(
          _$LocalSignUpSuccessUIEventImpl<T> value,
          $Res Function(_$LocalSignUpSuccessUIEventImpl<T>) then) =
      __$$LocalSignUpSuccessUIEventImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$LocalSignUpSuccessUIEventImplCopyWithImpl<T, $Res>
    extends _$LocalSignUpUIEventCopyWithImpl<T, $Res,
        _$LocalSignUpSuccessUIEventImpl<T>>
    implements _$$LocalSignUpSuccessUIEventImplCopyWith<T, $Res> {
  __$$LocalSignUpSuccessUIEventImplCopyWithImpl(
      _$LocalSignUpSuccessUIEventImpl<T> _value,
      $Res Function(_$LocalSignUpSuccessUIEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$LocalSignUpSuccessUIEventImpl<T>(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalSignUpSuccessUIEventImpl<T>
    implements LocalSignUpSuccessUIEvent<T> {
  const _$LocalSignUpSuccessUIEventImpl(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'LocalSignUpUIEvent<$T>.success(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUpSuccessUIEventImpl<T> &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignUpSuccessUIEventImplCopyWith<T,
          _$LocalSignUpSuccessUIEventImpl<T>>
      get copyWith => __$$LocalSignUpSuccessUIEventImplCopyWithImpl<T,
          _$LocalSignUpSuccessUIEventImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String target, String message) showInputError,
    required TResult Function(String nickname) success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function() verifyEmailSent,
  }) {
    return success(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String target, String message)? showInputError,
    TResult? Function(String nickname)? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function()? verifyEmailSent,
  }) {
    return success?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String target, String message)? showInputError,
    TResult Function(String nickname)? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function()? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUphowInputErrorUIEvent<T> value)
        showInputError,
    required TResult Function(LocalSignUpSuccessUIEvent<T> value) success,
    required TResult Function(LocalSignUpLoadingUIEvent<T> value) loading,
    required TResult Function(LocalVerifyEmailSentEvent<T> value)
        verifyEmailSent,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult? Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult? Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult? Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocalSignUpSuccessUIEvent<T> implements LocalSignUpUIEvent<T> {
  const factory LocalSignUpSuccessUIEvent(final String nickname) =
      _$LocalSignUpSuccessUIEventImpl<T>;

  String get nickname;
  @JsonKey(ignore: true)
  _$$LocalSignUpSuccessUIEventImplCopyWith<T,
          _$LocalSignUpSuccessUIEventImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSignUpLoadingUIEventImplCopyWith<T, $Res> {
  factory _$$LocalSignUpLoadingUIEventImplCopyWith(
          _$LocalSignUpLoadingUIEventImpl<T> value,
          $Res Function(_$LocalSignUpLoadingUIEventImpl<T>) then) =
      __$$LocalSignUpLoadingUIEventImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isSubmitting});
}

/// @nodoc
class __$$LocalSignUpLoadingUIEventImplCopyWithImpl<T, $Res>
    extends _$LocalSignUpUIEventCopyWithImpl<T, $Res,
        _$LocalSignUpLoadingUIEventImpl<T>>
    implements _$$LocalSignUpLoadingUIEventImplCopyWith<T, $Res> {
  __$$LocalSignUpLoadingUIEventImplCopyWithImpl(
      _$LocalSignUpLoadingUIEventImpl<T> _value,
      $Res Function(_$LocalSignUpLoadingUIEventImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
  }) {
    return _then(_$LocalSignUpLoadingUIEventImpl<T>(
      null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocalSignUpLoadingUIEventImpl<T>
    implements LocalSignUpLoadingUIEvent<T> {
  const _$LocalSignUpLoadingUIEventImpl(this.isSubmitting);

  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'LocalSignUpUIEvent<$T>.loading(isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUpLoadingUIEventImpl<T> &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignUpLoadingUIEventImplCopyWith<T,
          _$LocalSignUpLoadingUIEventImpl<T>>
      get copyWith => __$$LocalSignUpLoadingUIEventImplCopyWithImpl<T,
          _$LocalSignUpLoadingUIEventImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String target, String message) showInputError,
    required TResult Function(String nickname) success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function() verifyEmailSent,
  }) {
    return loading(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String target, String message)? showInputError,
    TResult? Function(String nickname)? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function()? verifyEmailSent,
  }) {
    return loading?.call(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String target, String message)? showInputError,
    TResult Function(String nickname)? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function()? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isSubmitting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUphowInputErrorUIEvent<T> value)
        showInputError,
    required TResult Function(LocalSignUpSuccessUIEvent<T> value) success,
    required TResult Function(LocalSignUpLoadingUIEvent<T> value) loading,
    required TResult Function(LocalVerifyEmailSentEvent<T> value)
        verifyEmailSent,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult? Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult? Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult? Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocalSignUpLoadingUIEvent<T> implements LocalSignUpUIEvent<T> {
  const factory LocalSignUpLoadingUIEvent(final bool isSubmitting) =
      _$LocalSignUpLoadingUIEventImpl<T>;

  bool get isSubmitting;
  @JsonKey(ignore: true)
  _$$LocalSignUpLoadingUIEventImplCopyWith<T,
          _$LocalSignUpLoadingUIEventImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalVerifyEmailSentEventImplCopyWith<T, $Res> {
  factory _$$LocalVerifyEmailSentEventImplCopyWith(
          _$LocalVerifyEmailSentEventImpl<T> value,
          $Res Function(_$LocalVerifyEmailSentEventImpl<T>) then) =
      __$$LocalVerifyEmailSentEventImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LocalVerifyEmailSentEventImplCopyWithImpl<T, $Res>
    extends _$LocalSignUpUIEventCopyWithImpl<T, $Res,
        _$LocalVerifyEmailSentEventImpl<T>>
    implements _$$LocalVerifyEmailSentEventImplCopyWith<T, $Res> {
  __$$LocalVerifyEmailSentEventImplCopyWithImpl(
      _$LocalVerifyEmailSentEventImpl<T> _value,
      $Res Function(_$LocalVerifyEmailSentEventImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalVerifyEmailSentEventImpl<T>
    implements LocalVerifyEmailSentEvent<T> {
  const _$LocalVerifyEmailSentEventImpl();

  @override
  String toString() {
    return 'LocalSignUpUIEvent<$T>.verifyEmailSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalVerifyEmailSentEventImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String target, String message) showInputError,
    required TResult Function(String nickname) success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function() verifyEmailSent,
  }) {
    return verifyEmailSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String target, String message)? showInputError,
    TResult? Function(String nickname)? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function()? verifyEmailSent,
  }) {
    return verifyEmailSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String target, String message)? showInputError,
    TResult Function(String nickname)? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function()? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (verifyEmailSent != null) {
      return verifyEmailSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignUphowInputErrorUIEvent<T> value)
        showInputError,
    required TResult Function(LocalSignUpSuccessUIEvent<T> value) success,
    required TResult Function(LocalSignUpLoadingUIEvent<T> value) loading,
    required TResult Function(LocalVerifyEmailSentEvent<T> value)
        verifyEmailSent,
  }) {
    return verifyEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult? Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult? Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult? Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
  }) {
    return verifyEmailSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignUphowInputErrorUIEvent<T> value)? showInputError,
    TResult Function(LocalSignUpSuccessUIEvent<T> value)? success,
    TResult Function(LocalSignUpLoadingUIEvent<T> value)? loading,
    TResult Function(LocalVerifyEmailSentEvent<T> value)? verifyEmailSent,
    required TResult orElse(),
  }) {
    if (verifyEmailSent != null) {
      return verifyEmailSent(this);
    }
    return orElse();
  }
}

abstract class LocalVerifyEmailSentEvent<T> implements LocalSignUpUIEvent<T> {
  const factory LocalVerifyEmailSentEvent() =
      _$LocalVerifyEmailSentEventImpl<T>;
}
