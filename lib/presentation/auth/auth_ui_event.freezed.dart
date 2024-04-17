// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthUIEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) signUpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String message)? signUpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? signUpSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(AuthSignUpSuccessUIEvent value) signUpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUIEventCopyWith<AuthUIEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUIEventCopyWith<$Res> {
  factory $AuthUIEventCopyWith(
          AuthUIEvent value, $Res Function(AuthUIEvent) then) =
      _$AuthUIEventCopyWithImpl<$Res, AuthUIEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthUIEventCopyWithImpl<$Res, $Val extends AuthUIEvent>
    implements $AuthUIEventCopyWith<$Res> {
  _$AuthUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthShowSnackBarUIEventImplCopyWith<$Res>
    implements $AuthUIEventCopyWith<$Res> {
  factory _$$AuthShowSnackBarUIEventImplCopyWith(
          _$AuthShowSnackBarUIEventImpl value,
          $Res Function(_$AuthShowSnackBarUIEventImpl) then) =
      __$$AuthShowSnackBarUIEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthShowSnackBarUIEventImplCopyWithImpl<$Res>
    extends _$AuthUIEventCopyWithImpl<$Res, _$AuthShowSnackBarUIEventImpl>
    implements _$$AuthShowSnackBarUIEventImplCopyWith<$Res> {
  __$$AuthShowSnackBarUIEventImplCopyWithImpl(
      _$AuthShowSnackBarUIEventImpl _value,
      $Res Function(_$AuthShowSnackBarUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthShowSnackBarUIEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthShowSnackBarUIEventImpl implements AuthShowSnackBarUIEvent {
  const _$AuthShowSnackBarUIEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthUIEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthShowSnackBarUIEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthShowSnackBarUIEventImplCopyWith<_$AuthShowSnackBarUIEventImpl>
      get copyWith => __$$AuthShowSnackBarUIEventImplCopyWithImpl<
          _$AuthShowSnackBarUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) signUpSuccess,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String message)? signUpSuccess,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? signUpSuccess,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(AuthSignUpSuccessUIEvent value) signUpSuccess,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class AuthShowSnackBarUIEvent implements AuthUIEvent {
  const factory AuthShowSnackBarUIEvent(final String message) =
      _$AuthShowSnackBarUIEventImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthShowSnackBarUIEventImplCopyWith<_$AuthShowSnackBarUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSignUpSuccessUIEventImplCopyWith<$Res>
    implements $AuthUIEventCopyWith<$Res> {
  factory _$$AuthSignUpSuccessUIEventImplCopyWith(
          _$AuthSignUpSuccessUIEventImpl value,
          $Res Function(_$AuthSignUpSuccessUIEventImpl) then) =
      __$$AuthSignUpSuccessUIEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthSignUpSuccessUIEventImplCopyWithImpl<$Res>
    extends _$AuthUIEventCopyWithImpl<$Res, _$AuthSignUpSuccessUIEventImpl>
    implements _$$AuthSignUpSuccessUIEventImplCopyWith<$Res> {
  __$$AuthSignUpSuccessUIEventImplCopyWithImpl(
      _$AuthSignUpSuccessUIEventImpl _value,
      $Res Function(_$AuthSignUpSuccessUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthSignUpSuccessUIEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpSuccessUIEventImpl implements AuthSignUpSuccessUIEvent {
  const _$AuthSignUpSuccessUIEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthUIEvent.signUpSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignUpSuccessUIEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpSuccessUIEventImplCopyWith<_$AuthSignUpSuccessUIEventImpl>
      get copyWith => __$$AuthSignUpSuccessUIEventImplCopyWithImpl<
          _$AuthSignUpSuccessUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) signUpSuccess,
  }) {
    return signUpSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String message)? signUpSuccess,
  }) {
    return signUpSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? signUpSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(AuthSignUpSuccessUIEvent value) signUpSuccess,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthSignUpSuccessUIEvent value)? signUpSuccess,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpSuccessUIEvent implements AuthUIEvent {
  const factory AuthSignUpSuccessUIEvent(final String message) =
      _$AuthSignUpSuccessUIEventImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignUpSuccessUIEventImplCopyWith<_$AuthSignUpSuccessUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
