// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(List<ApiError> errors) error,
    required TResult Function(String message) unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(List<ApiError> errors)? error,
    TResult? Function(String message)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(List<ApiError> errors)? error,
    TResult Function(String message)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultSuccess<T> value) success,
    required TResult Function(ApiResultError<T> value) error,
    required TResult Function(ApiResultUnHandledError<T> value) unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResultSuccess<T> value)? success,
    TResult? Function(ApiResultError<T> value)? error,
    TResult? Function(ApiResultUnHandledError<T> value)? unhandledError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultSuccess<T> value)? success,
    TResult Function(ApiResultError<T> value)? error,
    TResult Function(ApiResultUnHandledError<T> value)? unhandledError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiResultSuccessImplCopyWith<T, $Res> {
  factory _$$ApiResultSuccessImplCopyWith(_$ApiResultSuccessImpl<T> value,
          $Res Function(_$ApiResultSuccessImpl<T>) then) =
      __$$ApiResultSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResultSuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultSuccessImpl<T>>
    implements _$$ApiResultSuccessImplCopyWith<T, $Res> {
  __$$ApiResultSuccessImplCopyWithImpl(_$ApiResultSuccessImpl<T> _value,
      $Res Function(_$ApiResultSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResultSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiResultSuccessImpl<T> implements ApiResultSuccess<T> {
  const _$ApiResultSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultSuccessImplCopyWith<T, _$ApiResultSuccessImpl<T>> get copyWith =>
      __$$ApiResultSuccessImplCopyWithImpl<T, _$ApiResultSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(List<ApiError> errors) error,
    required TResult Function(String message) unhandledError,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(List<ApiError> errors)? error,
    TResult? Function(String message)? unhandledError,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(List<ApiError> errors)? error,
    TResult Function(String message)? unhandledError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultSuccess<T> value) success,
    required TResult Function(ApiResultError<T> value) error,
    required TResult Function(ApiResultUnHandledError<T> value) unhandledError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResultSuccess<T> value)? success,
    TResult? Function(ApiResultError<T> value)? error,
    TResult? Function(ApiResultUnHandledError<T> value)? unhandledError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultSuccess<T> value)? success,
    TResult Function(ApiResultError<T> value)? error,
    TResult Function(ApiResultUnHandledError<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ApiResultSuccess<T> implements ApiResult<T> {
  const factory ApiResultSuccess(final T data) = _$ApiResultSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ApiResultSuccessImplCopyWith<T, _$ApiResultSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResultErrorImplCopyWith<T, $Res> {
  factory _$$ApiResultErrorImplCopyWith(_$ApiResultErrorImpl<T> value,
          $Res Function(_$ApiResultErrorImpl<T>) then) =
      __$$ApiResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<ApiError> errors});
}

/// @nodoc
class __$$ApiResultErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultErrorImpl<T>>
    implements _$$ApiResultErrorImplCopyWith<T, $Res> {
  __$$ApiResultErrorImplCopyWithImpl(_$ApiResultErrorImpl<T> _value,
      $Res Function(_$ApiResultErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errors = null,
  }) {
    return _then(_$ApiResultErrorImpl<T>(
      null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ApiError>,
    ));
  }
}

/// @nodoc

class _$ApiResultErrorImpl<T> implements ApiResultError<T> {
  const _$ApiResultErrorImpl(final List<ApiError> errors) : _errors = errors;

  final List<ApiError> _errors;
  @override
  List<ApiError> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'ApiResult<$T>.error(errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultErrorImpl<T> &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultErrorImplCopyWith<T, _$ApiResultErrorImpl<T>> get copyWith =>
      __$$ApiResultErrorImplCopyWithImpl<T, _$ApiResultErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(List<ApiError> errors) error,
    required TResult Function(String message) unhandledError,
  }) {
    return error(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(List<ApiError> errors)? error,
    TResult? Function(String message)? unhandledError,
  }) {
    return error?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(List<ApiError> errors)? error,
    TResult Function(String message)? unhandledError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultSuccess<T> value) success,
    required TResult Function(ApiResultError<T> value) error,
    required TResult Function(ApiResultUnHandledError<T> value) unhandledError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResultSuccess<T> value)? success,
    TResult? Function(ApiResultError<T> value)? error,
    TResult? Function(ApiResultUnHandledError<T> value)? unhandledError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultSuccess<T> value)? success,
    TResult Function(ApiResultError<T> value)? error,
    TResult Function(ApiResultUnHandledError<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ApiResultError<T> implements ApiResult<T> {
  const factory ApiResultError(final List<ApiError> errors) =
      _$ApiResultErrorImpl<T>;

  List<ApiError> get errors;
  @JsonKey(ignore: true)
  _$$ApiResultErrorImplCopyWith<T, _$ApiResultErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResultUnHandledErrorImplCopyWith<T, $Res> {
  factory _$$ApiResultUnHandledErrorImplCopyWith(
          _$ApiResultUnHandledErrorImpl<T> value,
          $Res Function(_$ApiResultUnHandledErrorImpl<T>) then) =
      __$$ApiResultUnHandledErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiResultUnHandledErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultUnHandledErrorImpl<T>>
    implements _$$ApiResultUnHandledErrorImplCopyWith<T, $Res> {
  __$$ApiResultUnHandledErrorImplCopyWithImpl(
      _$ApiResultUnHandledErrorImpl<T> _value,
      $Res Function(_$ApiResultUnHandledErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiResultUnHandledErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiResultUnHandledErrorImpl<T> implements ApiResultUnHandledError<T> {
  const _$ApiResultUnHandledErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiResult<$T>.unhandledError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultUnHandledErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultUnHandledErrorImplCopyWith<T, _$ApiResultUnHandledErrorImpl<T>>
      get copyWith => __$$ApiResultUnHandledErrorImplCopyWithImpl<T,
          _$ApiResultUnHandledErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(List<ApiError> errors) error,
    required TResult Function(String message) unhandledError,
  }) {
    return unhandledError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(List<ApiError> errors)? error,
    TResult? Function(String message)? unhandledError,
  }) {
    return unhandledError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(List<ApiError> errors)? error,
    TResult Function(String message)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResultSuccess<T> value) success,
    required TResult Function(ApiResultError<T> value) error,
    required TResult Function(ApiResultUnHandledError<T> value) unhandledError,
  }) {
    return unhandledError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResultSuccess<T> value)? success,
    TResult? Function(ApiResultError<T> value)? error,
    TResult? Function(ApiResultUnHandledError<T> value)? unhandledError,
  }) {
    return unhandledError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResultSuccess<T> value)? success,
    TResult Function(ApiResultError<T> value)? error,
    TResult Function(ApiResultUnHandledError<T> value)? unhandledError,
    required TResult orElse(),
  }) {
    if (unhandledError != null) {
      return unhandledError(this);
    }
    return orElse();
  }
}

abstract class ApiResultUnHandledError<T> implements ApiResult<T> {
  const factory ApiResultUnHandledError(final String message) =
      _$ApiResultUnHandledErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ApiResultUnHandledErrorImplCopyWith<T, _$ApiResultUnHandledErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
