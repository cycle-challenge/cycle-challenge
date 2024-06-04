// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapEvent {
  Brightness get brightness => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? changeBrightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeBrightness value) changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeBrightness value)? changeBrightness,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeBrightness value)? changeBrightness,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapEventCopyWith<GoogleMapEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapEventCopyWith<$Res> {
  factory $GoogleMapEventCopyWith(
          GoogleMapEvent value, $Res Function(GoogleMapEvent) then) =
      _$GoogleMapEventCopyWithImpl<$Res, GoogleMapEvent>;
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class _$GoogleMapEventCopyWithImpl<$Res, $Val extends GoogleMapEvent>
    implements $GoogleMapEventCopyWith<$Res> {
  _$GoogleMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_value.copyWith(
      brightness: null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeBrightnessImplCopyWith<$Res>
    implements $GoogleMapEventCopyWith<$Res> {
  factory _$$ChangeBrightnessImplCopyWith(_$ChangeBrightnessImpl value,
          $Res Function(_$ChangeBrightnessImpl) then) =
      __$$ChangeBrightnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Brightness brightness});
}

/// @nodoc
class __$$ChangeBrightnessImplCopyWithImpl<$Res>
    extends _$GoogleMapEventCopyWithImpl<$Res, _$ChangeBrightnessImpl>
    implements _$$ChangeBrightnessImplCopyWith<$Res> {
  __$$ChangeBrightnessImplCopyWithImpl(_$ChangeBrightnessImpl _value,
      $Res Function(_$ChangeBrightnessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = null,
  }) {
    return _then(_$ChangeBrightnessImpl(
      null == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
    ));
  }
}

/// @nodoc

class _$ChangeBrightnessImpl implements _ChangeBrightness {
  const _$ChangeBrightnessImpl(this.brightness);

  @override
  final Brightness brightness;

  @override
  String toString() {
    return 'GoogleMapEvent.changeBrightness(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBrightnessImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBrightnessImplCopyWith<_$ChangeBrightnessImpl> get copyWith =>
      __$$ChangeBrightnessImplCopyWithImpl<_$ChangeBrightnessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Brightness brightness) changeBrightness,
  }) {
    return changeBrightness(brightness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Brightness brightness)? changeBrightness,
  }) {
    return changeBrightness?.call(brightness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Brightness brightness)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeBrightness != null) {
      return changeBrightness(brightness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeBrightness value) changeBrightness,
  }) {
    return changeBrightness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeBrightness value)? changeBrightness,
  }) {
    return changeBrightness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeBrightness value)? changeBrightness,
    required TResult orElse(),
  }) {
    if (changeBrightness != null) {
      return changeBrightness(this);
    }
    return orElse();
  }
}

abstract class _ChangeBrightness implements GoogleMapEvent {
  const factory _ChangeBrightness(final Brightness brightness) =
      _$ChangeBrightnessImpl;

  @override
  Brightness get brightness;
  @override
  @JsonKey(ignore: true)
  _$$ChangeBrightnessImplCopyWith<_$ChangeBrightnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
