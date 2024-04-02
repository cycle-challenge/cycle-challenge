// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapDataState {
  List<PlaceModel> get places => throw _privateConstructorUsedError;
  List<TravelModel> get travels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapDataStateCopyWith<MapDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapDataStateCopyWith<$Res> {
  factory $MapDataStateCopyWith(
          MapDataState value, $Res Function(MapDataState) then) =
      _$MapDataStateCopyWithImpl<$Res, MapDataState>;
  @useResult
  $Res call({List<PlaceModel> places, List<TravelModel> travels});
}

/// @nodoc
class _$MapDataStateCopyWithImpl<$Res, $Val extends MapDataState>
    implements $MapDataStateCopyWith<$Res> {
  _$MapDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? travels = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      travels: null == travels
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapDataStateImplCopyWith<$Res>
    implements $MapDataStateCopyWith<$Res> {
  factory _$$MapDataStateImplCopyWith(
          _$MapDataStateImpl value, $Res Function(_$MapDataStateImpl) then) =
      __$$MapDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceModel> places, List<TravelModel> travels});
}

/// @nodoc
class __$$MapDataStateImplCopyWithImpl<$Res>
    extends _$MapDataStateCopyWithImpl<$Res, _$MapDataStateImpl>
    implements _$$MapDataStateImplCopyWith<$Res> {
  __$$MapDataStateImplCopyWithImpl(
      _$MapDataStateImpl _value, $Res Function(_$MapDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? travels = null,
  }) {
    return _then(_$MapDataStateImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      travels: null == travels
          ? _value._travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
    ));
  }
}

/// @nodoc

class _$MapDataStateImpl implements _MapDataState {
  _$MapDataStateImpl(
      {final List<PlaceModel> places = const [],
      final List<TravelModel> travels = const []})
      : _places = places,
        _travels = travels;

  final List<PlaceModel> _places;
  @override
  @JsonKey()
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  final List<TravelModel> _travels;
  @override
  @JsonKey()
  List<TravelModel> get travels {
    if (_travels is EqualUnmodifiableListView) return _travels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_travels);
  }

  @override
  String toString() {
    return 'MapDataState(places: $places, travels: $travels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapDataStateImpl &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(other._travels, _travels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_places),
      const DeepCollectionEquality().hash(_travels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapDataStateImplCopyWith<_$MapDataStateImpl> get copyWith =>
      __$$MapDataStateImplCopyWithImpl<_$MapDataStateImpl>(this, _$identity);
}

abstract class _MapDataState implements MapDataState {
  factory _MapDataState(
      {final List<PlaceModel> places,
      final List<TravelModel> travels}) = _$MapDataStateImpl;

  @override
  List<PlaceModel> get places;
  @override
  List<TravelModel> get travels;
  @override
  @JsonKey(ignore: true)
  _$$MapDataStateImplCopyWith<_$MapDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
