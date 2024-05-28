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
mixin _$AuthUiEvent {
  String get uri => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) startSocialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? startSocialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? startSocialSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSocialSignIn value) startSocialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSocialSignIn value)? startSocialSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSocialSignIn value)? startSocialSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUiEventCopyWith<AuthUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUiEventCopyWith<$Res> {
  factory $AuthUiEventCopyWith(
          AuthUiEvent value, $Res Function(AuthUiEvent) then) =
      _$AuthUiEventCopyWithImpl<$Res, AuthUiEvent>;
  @useResult
  $Res call({String uri});
}

/// @nodoc
class _$AuthUiEventCopyWithImpl<$Res, $Val extends AuthUiEvent>
    implements $AuthUiEventCopyWith<$Res> {
  _$AuthUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartSocialSignInImplCopyWith<$Res>
    implements $AuthUiEventCopyWith<$Res> {
  factory _$$StartSocialSignInImplCopyWith(_$StartSocialSignInImpl value,
          $Res Function(_$StartSocialSignInImpl) then) =
      __$$StartSocialSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uri});
}

/// @nodoc
class __$$StartSocialSignInImplCopyWithImpl<$Res>
    extends _$AuthUiEventCopyWithImpl<$Res, _$StartSocialSignInImpl>
    implements _$$StartSocialSignInImplCopyWith<$Res> {
  __$$StartSocialSignInImplCopyWithImpl(_$StartSocialSignInImpl _value,
      $Res Function(_$StartSocialSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$StartSocialSignInImpl(
      null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartSocialSignInImpl implements _StartSocialSignIn {
  const _$StartSocialSignInImpl(this.uri);

  @override
  final String uri;

  @override
  String toString() {
    return 'AuthUiEvent.startSocialSignIn(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartSocialSignInImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartSocialSignInImplCopyWith<_$StartSocialSignInImpl> get copyWith =>
      __$$StartSocialSignInImplCopyWithImpl<_$StartSocialSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uri) startSocialSignIn,
  }) {
    return startSocialSignIn(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uri)? startSocialSignIn,
  }) {
    return startSocialSignIn?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uri)? startSocialSignIn,
    required TResult orElse(),
  }) {
    if (startSocialSignIn != null) {
      return startSocialSignIn(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSocialSignIn value) startSocialSignIn,
  }) {
    return startSocialSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSocialSignIn value)? startSocialSignIn,
  }) {
    return startSocialSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSocialSignIn value)? startSocialSignIn,
    required TResult orElse(),
  }) {
    if (startSocialSignIn != null) {
      return startSocialSignIn(this);
    }
    return orElse();
  }
}

abstract class _StartSocialSignIn implements AuthUiEvent {
  const factory _StartSocialSignIn(final String uri) = _$StartSocialSignInImpl;

  @override
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$StartSocialSignInImplCopyWith<_$StartSocialSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
