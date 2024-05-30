// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapState {
  Brightness? get brightness => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapStateCopyWith<GoogleMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapStateCopyWith<$Res> {
  factory $GoogleMapStateCopyWith(
          GoogleMapState value, $Res Function(GoogleMapState) then) =
      _$GoogleMapStateCopyWithImpl<$Res, GoogleMapState>;
  @useResult
  $Res call({Brightness? brightness});
}

/// @nodoc
class _$GoogleMapStateCopyWithImpl<$Res, $Val extends GoogleMapState>
    implements $GoogleMapStateCopyWith<$Res> {
  _$GoogleMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = freezed,
  }) {
    return _then(_value.copyWith(
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleMapStateImplCopyWith<$Res>
    implements $GoogleMapStateCopyWith<$Res> {
  factory _$$GoogleMapStateImplCopyWith(_$GoogleMapStateImpl value,
          $Res Function(_$GoogleMapStateImpl) then) =
      __$$GoogleMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Brightness? brightness});
}

/// @nodoc
class __$$GoogleMapStateImplCopyWithImpl<$Res>
    extends _$GoogleMapStateCopyWithImpl<$Res, _$GoogleMapStateImpl>
    implements _$$GoogleMapStateImplCopyWith<$Res> {
  __$$GoogleMapStateImplCopyWithImpl(
      _$GoogleMapStateImpl _value, $Res Function(_$GoogleMapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brightness = freezed,
  }) {
    return _then(_$GoogleMapStateImpl(
      brightness: freezed == brightness
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness?,
    ));
  }
}

/// @nodoc

class _$GoogleMapStateImpl implements _GoogleMapState {
  _$GoogleMapStateImpl({this.brightness});

  @override
  final Brightness? brightness;

  @override
  String toString() {
    return 'GoogleMapState(brightness: $brightness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleMapStateImpl &&
            (identical(other.brightness, brightness) ||
                other.brightness == brightness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brightness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleMapStateImplCopyWith<_$GoogleMapStateImpl> get copyWith =>
      __$$GoogleMapStateImplCopyWithImpl<_$GoogleMapStateImpl>(
          this, _$identity);
}

abstract class _GoogleMapState implements GoogleMapState {
  factory _GoogleMapState({final Brightness? brightness}) =
      _$GoogleMapStateImpl;

  @override
  Brightness? get brightness;
  @override
  @JsonKey(ignore: true)
  _$$GoogleMapStateImplCopyWith<_$GoogleMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
