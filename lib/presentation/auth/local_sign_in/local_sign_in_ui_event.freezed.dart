// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sign_in_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalSignInUIEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function(String target, String message) showInputError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function(String target, String message)? showInputError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function(String target, String message)? showInputError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignInSuccessUIEvent value) success,
    required TResult Function(LocalSignInLoadingUIEvent value) loading,
    required TResult Function(LocalSignInShowInputErrorUIEvent value)
        showInputError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignInSuccessUIEvent value)? success,
    TResult? Function(LocalSignInLoadingUIEvent value)? loading,
    TResult? Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignInSuccessUIEvent value)? success,
    TResult Function(LocalSignInLoadingUIEvent value)? loading,
    TResult Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSignInUIEventCopyWith<$Res> {
  factory $LocalSignInUIEventCopyWith(
          LocalSignInUIEvent value, $Res Function(LocalSignInUIEvent) then) =
      _$LocalSignInUIEventCopyWithImpl<$Res, LocalSignInUIEvent>;
}

/// @nodoc
class _$LocalSignInUIEventCopyWithImpl<$Res, $Val extends LocalSignInUIEvent>
    implements $LocalSignInUIEventCopyWith<$Res> {
  _$LocalSignInUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalSignInSuccessUIEventImplCopyWith<$Res> {
  factory _$$LocalSignInSuccessUIEventImplCopyWith(
          _$LocalSignInSuccessUIEventImpl value,
          $Res Function(_$LocalSignInSuccessUIEventImpl) then) =
      __$$LocalSignInSuccessUIEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalSignInSuccessUIEventImplCopyWithImpl<$Res>
    extends _$LocalSignInUIEventCopyWithImpl<$Res,
        _$LocalSignInSuccessUIEventImpl>
    implements _$$LocalSignInSuccessUIEventImplCopyWith<$Res> {
  __$$LocalSignInSuccessUIEventImplCopyWithImpl(
      _$LocalSignInSuccessUIEventImpl _value,
      $Res Function(_$LocalSignInSuccessUIEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocalSignInSuccessUIEventImpl implements LocalSignInSuccessUIEvent {
  const _$LocalSignInSuccessUIEventImpl();

  @override
  String toString() {
    return 'LocalSignInUIEvent.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignInSuccessUIEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function(String target, String message) showInputError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function(String target, String message)? showInputError,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function(String target, String message)? showInputError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalSignInSuccessUIEvent value) success,
    required TResult Function(LocalSignInLoadingUIEvent value) loading,
    required TResult Function(LocalSignInShowInputErrorUIEvent value)
        showInputError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignInSuccessUIEvent value)? success,
    TResult? Function(LocalSignInLoadingUIEvent value)? loading,
    TResult? Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignInSuccessUIEvent value)? success,
    TResult Function(LocalSignInLoadingUIEvent value)? loading,
    TResult Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocalSignInSuccessUIEvent implements LocalSignInUIEvent {
  const factory LocalSignInSuccessUIEvent() = _$LocalSignInSuccessUIEventImpl;
}

/// @nodoc
abstract class _$$LocalSignInLoadingUIEventImplCopyWith<$Res> {
  factory _$$LocalSignInLoadingUIEventImplCopyWith(
          _$LocalSignInLoadingUIEventImpl value,
          $Res Function(_$LocalSignInLoadingUIEventImpl) then) =
      __$$LocalSignInLoadingUIEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSubmitting});
}

/// @nodoc
class __$$LocalSignInLoadingUIEventImplCopyWithImpl<$Res>
    extends _$LocalSignInUIEventCopyWithImpl<$Res,
        _$LocalSignInLoadingUIEventImpl>
    implements _$$LocalSignInLoadingUIEventImplCopyWith<$Res> {
  __$$LocalSignInLoadingUIEventImplCopyWithImpl(
      _$LocalSignInLoadingUIEventImpl _value,
      $Res Function(_$LocalSignInLoadingUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
  }) {
    return _then(_$LocalSignInLoadingUIEventImpl(
      null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocalSignInLoadingUIEventImpl implements LocalSignInLoadingUIEvent {
  const _$LocalSignInLoadingUIEventImpl(this.isSubmitting);

  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'LocalSignInUIEvent.loading(isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignInLoadingUIEventImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignInLoadingUIEventImplCopyWith<_$LocalSignInLoadingUIEventImpl>
      get copyWith => __$$LocalSignInLoadingUIEventImplCopyWithImpl<
          _$LocalSignInLoadingUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function(String target, String message) showInputError,
  }) {
    return loading(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function(String target, String message)? showInputError,
  }) {
    return loading?.call(isSubmitting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function(String target, String message)? showInputError,
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
    required TResult Function(LocalSignInSuccessUIEvent value) success,
    required TResult Function(LocalSignInLoadingUIEvent value) loading,
    required TResult Function(LocalSignInShowInputErrorUIEvent value)
        showInputError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignInSuccessUIEvent value)? success,
    TResult? Function(LocalSignInLoadingUIEvent value)? loading,
    TResult? Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignInSuccessUIEvent value)? success,
    TResult Function(LocalSignInLoadingUIEvent value)? loading,
    TResult Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocalSignInLoadingUIEvent implements LocalSignInUIEvent {
  const factory LocalSignInLoadingUIEvent(final bool isSubmitting) =
      _$LocalSignInLoadingUIEventImpl;

  bool get isSubmitting;
  @JsonKey(ignore: true)
  _$$LocalSignInLoadingUIEventImplCopyWith<_$LocalSignInLoadingUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalSignInShowInputErrorUIEventImplCopyWith<$Res> {
  factory _$$LocalSignInShowInputErrorUIEventImplCopyWith(
          _$LocalSignInShowInputErrorUIEventImpl value,
          $Res Function(_$LocalSignInShowInputErrorUIEventImpl) then) =
      __$$LocalSignInShowInputErrorUIEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String target, String message});
}

/// @nodoc
class __$$LocalSignInShowInputErrorUIEventImplCopyWithImpl<$Res>
    extends _$LocalSignInUIEventCopyWithImpl<$Res,
        _$LocalSignInShowInputErrorUIEventImpl>
    implements _$$LocalSignInShowInputErrorUIEventImplCopyWith<$Res> {
  __$$LocalSignInShowInputErrorUIEventImplCopyWithImpl(
      _$LocalSignInShowInputErrorUIEventImpl _value,
      $Res Function(_$LocalSignInShowInputErrorUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? message = null,
  }) {
    return _then(_$LocalSignInShowInputErrorUIEventImpl(
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

class _$LocalSignInShowInputErrorUIEventImpl
    implements LocalSignInShowInputErrorUIEvent {
  const _$LocalSignInShowInputErrorUIEventImpl(this.target, this.message);

  @override
  final String target;
  @override
  final String message;

  @override
  String toString() {
    return 'LocalSignInUIEvent.showInputError(target: $target, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignInShowInputErrorUIEventImpl &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, target, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignInShowInputErrorUIEventImplCopyWith<
          _$LocalSignInShowInputErrorUIEventImpl>
      get copyWith => __$$LocalSignInShowInputErrorUIEventImplCopyWithImpl<
          _$LocalSignInShowInputErrorUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(bool isSubmitting) loading,
    required TResult Function(String target, String message) showInputError,
  }) {
    return showInputError(target, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(bool isSubmitting)? loading,
    TResult? Function(String target, String message)? showInputError,
  }) {
    return showInputError?.call(target, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(bool isSubmitting)? loading,
    TResult Function(String target, String message)? showInputError,
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
    required TResult Function(LocalSignInSuccessUIEvent value) success,
    required TResult Function(LocalSignInLoadingUIEvent value) loading,
    required TResult Function(LocalSignInShowInputErrorUIEvent value)
        showInputError,
  }) {
    return showInputError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocalSignInSuccessUIEvent value)? success,
    TResult? Function(LocalSignInLoadingUIEvent value)? loading,
    TResult? Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
  }) {
    return showInputError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalSignInSuccessUIEvent value)? success,
    TResult Function(LocalSignInLoadingUIEvent value)? loading,
    TResult Function(LocalSignInShowInputErrorUIEvent value)? showInputError,
    required TResult orElse(),
  }) {
    if (showInputError != null) {
      return showInputError(this);
    }
    return orElse();
  }
}

abstract class LocalSignInShowInputErrorUIEvent implements LocalSignInUIEvent {
  const factory LocalSignInShowInputErrorUIEvent(
          final String target, final String message) =
      _$LocalSignInShowInputErrorUIEventImpl;

  String get target;
  String get message;
  @JsonKey(ignore: true)
  _$$LocalSignInShowInputErrorUIEventImplCopyWith<
          _$LocalSignInShowInputErrorUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
