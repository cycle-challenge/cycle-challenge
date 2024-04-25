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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String nickname) autoSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String nickname)? autoSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String nickname)? autoSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(AuthAutoSignInUIEvent value) autoSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthAutoSignInUIEvent value)? autoSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthAutoSignInUIEvent value)? autoSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUIEventCopyWith<$Res> {
  factory $AuthUIEventCopyWith(
          AuthUIEvent value, $Res Function(AuthUIEvent) then) =
      _$AuthUIEventCopyWithImpl<$Res, AuthUIEvent>;
}

/// @nodoc
class _$AuthUIEventCopyWithImpl<$Res, $Val extends AuthUIEvent>
    implements $AuthUIEventCopyWith<$Res> {
  _$AuthUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthShowSnackBarUIEventImplCopyWith<$Res> {
  factory _$$AuthShowSnackBarUIEventImplCopyWith(
          _$AuthShowSnackBarUIEventImpl value,
          $Res Function(_$AuthShowSnackBarUIEventImpl) then) =
      __$$AuthShowSnackBarUIEventImplCopyWithImpl<$Res>;
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
    required TResult Function(String nickname) autoSignIn,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String nickname)? autoSignIn,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String nickname)? autoSignIn,
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
    required TResult Function(AuthAutoSignInUIEvent value) autoSignIn,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthAutoSignInUIEvent value)? autoSignIn,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthAutoSignInUIEvent value)? autoSignIn,
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

  String get message;
  @JsonKey(ignore: true)
  _$$AuthShowSnackBarUIEventImplCopyWith<_$AuthShowSnackBarUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthAutoSignInUIEventImplCopyWith<$Res> {
  factory _$$AuthAutoSignInUIEventImplCopyWith(
          _$AuthAutoSignInUIEventImpl value,
          $Res Function(_$AuthAutoSignInUIEventImpl) then) =
      __$$AuthAutoSignInUIEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$AuthAutoSignInUIEventImplCopyWithImpl<$Res>
    extends _$AuthUIEventCopyWithImpl<$Res, _$AuthAutoSignInUIEventImpl>
    implements _$$AuthAutoSignInUIEventImplCopyWith<$Res> {
  __$$AuthAutoSignInUIEventImplCopyWithImpl(_$AuthAutoSignInUIEventImpl _value,
      $Res Function(_$AuthAutoSignInUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$AuthAutoSignInUIEventImpl(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthAutoSignInUIEventImpl implements AuthAutoSignInUIEvent {
  const _$AuthAutoSignInUIEventImpl(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'AuthUIEvent.autoSignIn(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAutoSignInUIEventImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAutoSignInUIEventImplCopyWith<_$AuthAutoSignInUIEventImpl>
      get copyWith => __$$AuthAutoSignInUIEventImplCopyWithImpl<
          _$AuthAutoSignInUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String nickname) autoSignIn,
  }) {
    return autoSignIn(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String nickname)? autoSignIn,
  }) {
    return autoSignIn?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String nickname)? autoSignIn,
    required TResult orElse(),
  }) {
    if (autoSignIn != null) {
      return autoSignIn(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(AuthAutoSignInUIEvent value) autoSignIn,
  }) {
    return autoSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(AuthAutoSignInUIEvent value)? autoSignIn,
  }) {
    return autoSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(AuthAutoSignInUIEvent value)? autoSignIn,
    required TResult orElse(),
  }) {
    if (autoSignIn != null) {
      return autoSignIn(this);
    }
    return orElse();
  }
}

abstract class AuthAutoSignInUIEvent implements AuthUIEvent {
  const factory AuthAutoSignInUIEvent(final String nickname) =
      _$AuthAutoSignInUIEventImpl;

  String get nickname;
  @JsonKey(ignore: true)
  _$$AuthAutoSignInUIEventImplCopyWith<_$AuthAutoSignInUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
