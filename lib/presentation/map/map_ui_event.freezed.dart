// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapUIEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(double latitude, double longitude) moveCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(double latitude, double longitude)? moveCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(double latitude, double longitude)? moveCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(MoveCameraEvent value) moveCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(MoveCameraEvent value)? moveCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(MoveCameraEvent value)? moveCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapUIEventCopyWith<$Res> {
  factory $MapUIEventCopyWith(
          MapUIEvent value, $Res Function(MapUIEvent) then) =
      _$MapUIEventCopyWithImpl<$Res, MapUIEvent>;
}

/// @nodoc
class _$MapUIEventCopyWithImpl<$Res, $Val extends MapUIEvent>
    implements $MapUIEventCopyWith<$Res> {
  _$MapUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowSnackBarUIEventImplCopyWith<$Res> {
  factory _$$ShowSnackBarUIEventImplCopyWith(_$ShowSnackBarUIEventImpl value,
          $Res Function(_$ShowSnackBarUIEventImpl) then) =
      __$$ShowSnackBarUIEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarUIEventImplCopyWithImpl<$Res>
    extends _$MapUIEventCopyWithImpl<$Res, _$ShowSnackBarUIEventImpl>
    implements _$$ShowSnackBarUIEventImplCopyWith<$Res> {
  __$$ShowSnackBarUIEventImplCopyWithImpl(_$ShowSnackBarUIEventImpl _value,
      $Res Function(_$ShowSnackBarUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBarUIEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarUIEventImpl implements ShowSnackBarUIEvent {
  const _$ShowSnackBarUIEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MapUIEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarUIEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarUIEventImplCopyWith<_$ShowSnackBarUIEventImpl> get copyWith =>
      __$$ShowSnackBarUIEventImplCopyWithImpl<_$ShowSnackBarUIEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(double latitude, double longitude) moveCamera,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(double latitude, double longitude)? moveCamera,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(double latitude, double longitude)? moveCamera,
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
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(MoveCameraEvent value) moveCamera,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(MoveCameraEvent value)? moveCamera,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(MoveCameraEvent value)? moveCamera,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBarUIEvent implements MapUIEvent {
  const factory ShowSnackBarUIEvent(final String message) =
      _$ShowSnackBarUIEventImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarUIEventImplCopyWith<_$ShowSnackBarUIEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoveCameraEventImplCopyWith<$Res> {
  factory _$$MoveCameraEventImplCopyWith(_$MoveCameraEventImpl value,
          $Res Function(_$MoveCameraEventImpl) then) =
      __$$MoveCameraEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$MoveCameraEventImplCopyWithImpl<$Res>
    extends _$MapUIEventCopyWithImpl<$Res, _$MoveCameraEventImpl>
    implements _$$MoveCameraEventImplCopyWith<$Res> {
  __$$MoveCameraEventImplCopyWithImpl(
      _$MoveCameraEventImpl _value, $Res Function(_$MoveCameraEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$MoveCameraEventImpl(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MoveCameraEventImpl implements MoveCameraEvent {
  const _$MoveCameraEventImpl(this.latitude, this.longitude);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MapUIEvent.moveCamera(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveCameraEventImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveCameraEventImplCopyWith<_$MoveCameraEventImpl> get copyWith =>
      __$$MoveCameraEventImplCopyWithImpl<_$MoveCameraEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(double latitude, double longitude) moveCamera,
  }) {
    return moveCamera(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function(double latitude, double longitude)? moveCamera,
  }) {
    return moveCamera?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(double latitude, double longitude)? moveCamera,
    required TResult orElse(),
  }) {
    if (moveCamera != null) {
      return moveCamera(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
    required TResult Function(MoveCameraEvent value) moveCamera,
  }) {
    return moveCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult? Function(MoveCameraEvent value)? moveCamera,
  }) {
    return moveCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    TResult Function(MoveCameraEvent value)? moveCamera,
    required TResult orElse(),
  }) {
    if (moveCamera != null) {
      return moveCamera(this);
    }
    return orElse();
  }
}

abstract class MoveCameraEvent implements MapUIEvent {
  const factory MoveCameraEvent(final double latitude, final double longitude) =
      _$MoveCameraEventImpl;

  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  _$$MoveCameraEventImplCopyWith<_$MoveCameraEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
