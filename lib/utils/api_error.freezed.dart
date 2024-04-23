// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, Map<String, String> errors)
        targetError,
    required TResult Function(String code, String message) codeError,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, Map<String, String> errors)? targetError,
    TResult? Function(String code, String message)? codeError,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, Map<String, String> errors)? targetError,
    TResult Function(String code, String message)? codeError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTargetError value) targetError,
    required TResult Function(ApiCodeError value) codeError,
    required TResult Function(ApiErrorError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTargetError value)? targetError,
    TResult? Function(ApiCodeError value)? codeError,
    TResult? Function(ApiErrorError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTargetError value)? targetError,
    TResult Function(ApiCodeError value)? codeError,
    TResult Function(ApiErrorError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiTargetErrorImplCopyWith<$Res> {
  factory _$$ApiTargetErrorImplCopyWith(_$ApiTargetErrorImpl value,
          $Res Function(_$ApiTargetErrorImpl) then) =
      __$$ApiTargetErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, Map<String, String> errors});
}

/// @nodoc
class __$$ApiTargetErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiTargetErrorImpl>
    implements _$$ApiTargetErrorImplCopyWith<$Res> {
  __$$ApiTargetErrorImplCopyWithImpl(
      _$ApiTargetErrorImpl _value, $Res Function(_$ApiTargetErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? errors = null,
  }) {
    return _then(_$ApiTargetErrorImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$ApiTargetErrorImpl implements ApiTargetError {
  const _$ApiTargetErrorImpl(this.code, final Map<String, String> errors)
      : _errors = errors;

  @override
  final String code;
  final Map<String, String> _errors;
  @override
  Map<String, String> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ApiError.targetError(code: $code, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTargetErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTargetErrorImplCopyWith<_$ApiTargetErrorImpl> get copyWith =>
      __$$ApiTargetErrorImplCopyWithImpl<_$ApiTargetErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, Map<String, String> errors)
        targetError,
    required TResult Function(String code, String message) codeError,
    required TResult Function(String message) error,
  }) {
    return targetError(code, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, Map<String, String> errors)? targetError,
    TResult? Function(String code, String message)? codeError,
    TResult? Function(String message)? error,
  }) {
    return targetError?.call(code, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, Map<String, String> errors)? targetError,
    TResult Function(String code, String message)? codeError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (targetError != null) {
      return targetError(code, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTargetError value) targetError,
    required TResult Function(ApiCodeError value) codeError,
    required TResult Function(ApiErrorError value) error,
  }) {
    return targetError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTargetError value)? targetError,
    TResult? Function(ApiCodeError value)? codeError,
    TResult? Function(ApiErrorError value)? error,
  }) {
    return targetError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTargetError value)? targetError,
    TResult Function(ApiCodeError value)? codeError,
    TResult Function(ApiErrorError value)? error,
    required TResult orElse(),
  }) {
    if (targetError != null) {
      return targetError(this);
    }
    return orElse();
  }
}

abstract class ApiTargetError implements ApiError {
  const factory ApiTargetError(
          final String code, final Map<String, String> errors) =
      _$ApiTargetErrorImpl;

  String get code;
  Map<String, String> get errors;
  @JsonKey(ignore: true)
  _$$ApiTargetErrorImplCopyWith<_$ApiTargetErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiCodeErrorImplCopyWith<$Res> {
  factory _$$ApiCodeErrorImplCopyWith(
          _$ApiCodeErrorImpl value, $Res Function(_$ApiCodeErrorImpl) then) =
      __$$ApiCodeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$ApiCodeErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiCodeErrorImpl>
    implements _$$ApiCodeErrorImplCopyWith<$Res> {
  __$$ApiCodeErrorImplCopyWithImpl(
      _$ApiCodeErrorImpl _value, $Res Function(_$ApiCodeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ApiCodeErrorImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiCodeErrorImpl implements ApiCodeError {
  const _$ApiCodeErrorImpl(this.code, this.message);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiError.codeError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiCodeErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiCodeErrorImplCopyWith<_$ApiCodeErrorImpl> get copyWith =>
      __$$ApiCodeErrorImplCopyWithImpl<_$ApiCodeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, Map<String, String> errors)
        targetError,
    required TResult Function(String code, String message) codeError,
    required TResult Function(String message) error,
  }) {
    return codeError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, Map<String, String> errors)? targetError,
    TResult? Function(String code, String message)? codeError,
    TResult? Function(String message)? error,
  }) {
    return codeError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, Map<String, String> errors)? targetError,
    TResult Function(String code, String message)? codeError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (codeError != null) {
      return codeError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTargetError value) targetError,
    required TResult Function(ApiCodeError value) codeError,
    required TResult Function(ApiErrorError value) error,
  }) {
    return codeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTargetError value)? targetError,
    TResult? Function(ApiCodeError value)? codeError,
    TResult? Function(ApiErrorError value)? error,
  }) {
    return codeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTargetError value)? targetError,
    TResult Function(ApiCodeError value)? codeError,
    TResult Function(ApiErrorError value)? error,
    required TResult orElse(),
  }) {
    if (codeError != null) {
      return codeError(this);
    }
    return orElse();
  }
}

abstract class ApiCodeError implements ApiError {
  const factory ApiCodeError(final String code, final String message) =
      _$ApiCodeErrorImpl;

  String get code;
  String get message;
  @JsonKey(ignore: true)
  _$$ApiCodeErrorImplCopyWith<_$ApiCodeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiErrorErrorImplCopyWith<$Res> {
  factory _$$ApiErrorErrorImplCopyWith(
          _$ApiErrorErrorImpl value, $Res Function(_$ApiErrorErrorImpl) then) =
      __$$ApiErrorErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiErrorErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiErrorErrorImpl>
    implements _$$ApiErrorErrorImplCopyWith<$Res> {
  __$$ApiErrorErrorImplCopyWithImpl(
      _$ApiErrorErrorImpl _value, $Res Function(_$ApiErrorErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiErrorErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiErrorErrorImpl implements ApiErrorError {
  const _$ApiErrorErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiError.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorErrorImplCopyWith<_$ApiErrorErrorImpl> get copyWith =>
      __$$ApiErrorErrorImplCopyWithImpl<_$ApiErrorErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code, Map<String, String> errors)
        targetError,
    required TResult Function(String code, String message) codeError,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code, Map<String, String> errors)? targetError,
    TResult? Function(String code, String message)? codeError,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code, Map<String, String> errors)? targetError,
    TResult Function(String code, String message)? codeError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiTargetError value) targetError,
    required TResult Function(ApiCodeError value) codeError,
    required TResult Function(ApiErrorError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiTargetError value)? targetError,
    TResult? Function(ApiCodeError value)? codeError,
    TResult? Function(ApiErrorError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiTargetError value)? targetError,
    TResult Function(ApiCodeError value)? codeError,
    TResult Function(ApiErrorError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ApiErrorError implements ApiError {
  const factory ApiErrorError(final String message) = _$ApiErrorErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ApiErrorErrorImplCopyWith<_$ApiErrorErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
