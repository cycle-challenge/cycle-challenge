// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_filter_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapFilterDataState {
  List<PlaceModel> get filteredPlaces => throw _privateConstructorUsedError;
  List<TravelModel> get filteredTravels => throw _privateConstructorUsedError;
  PlaceFilter get placeFilter => throw _privateConstructorUsedError;
  TravelFilter get travelFilter => throw _privateConstructorUsedError;
  PlaceModel? get selectedPlace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapFilterDataStateCopyWith<MapFilterDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapFilterDataStateCopyWith<$Res> {
  factory $MapFilterDataStateCopyWith(
          MapFilterDataState value, $Res Function(MapFilterDataState) then) =
      _$MapFilterDataStateCopyWithImpl<$Res, MapFilterDataState>;
  @useResult
  $Res call(
      {List<PlaceModel> filteredPlaces,
      List<TravelModel> filteredTravels,
      PlaceFilter placeFilter,
      TravelFilter travelFilter,
      PlaceModel? selectedPlace});
}

/// @nodoc
class _$MapFilterDataStateCopyWithImpl<$Res, $Val extends MapFilterDataState>
    implements $MapFilterDataStateCopyWith<$Res> {
  _$MapFilterDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredPlaces = null,
    Object? filteredTravels = null,
    Object? placeFilter = null,
    Object? travelFilter = null,
    Object? selectedPlace = freezed,
  }) {
    return _then(_value.copyWith(
      filteredPlaces: null == filteredPlaces
          ? _value.filteredPlaces
          : filteredPlaces // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      filteredTravels: null == filteredTravels
          ? _value.filteredTravels
          : filteredTravels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
      placeFilter: null == placeFilter
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
      travelFilter: null == travelFilter
          ? _value.travelFilter
          : travelFilter // ignore: cast_nullable_to_non_nullable
              as TravelFilter,
      selectedPlace: freezed == selectedPlace
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as PlaceModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapFilterDataStateImplCopyWith<$Res>
    implements $MapFilterDataStateCopyWith<$Res> {
  factory _$$MapFilterDataStateImplCopyWith(_$MapFilterDataStateImpl value,
          $Res Function(_$MapFilterDataStateImpl) then) =
      __$$MapFilterDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaceModel> filteredPlaces,
      List<TravelModel> filteredTravels,
      PlaceFilter placeFilter,
      TravelFilter travelFilter,
      PlaceModel? selectedPlace});
}

/// @nodoc
class __$$MapFilterDataStateImplCopyWithImpl<$Res>
    extends _$MapFilterDataStateCopyWithImpl<$Res, _$MapFilterDataStateImpl>
    implements _$$MapFilterDataStateImplCopyWith<$Res> {
  __$$MapFilterDataStateImplCopyWithImpl(_$MapFilterDataStateImpl _value,
      $Res Function(_$MapFilterDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredPlaces = null,
    Object? filteredTravels = null,
    Object? placeFilter = null,
    Object? travelFilter = null,
    Object? selectedPlace = freezed,
  }) {
    return _then(_$MapFilterDataStateImpl(
      filteredPlaces: null == filteredPlaces
          ? _value._filteredPlaces
          : filteredPlaces // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      filteredTravels: null == filteredTravels
          ? _value._filteredTravels
          : filteredTravels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
      placeFilter: null == placeFilter
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
      travelFilter: null == travelFilter
          ? _value.travelFilter
          : travelFilter // ignore: cast_nullable_to_non_nullable
              as TravelFilter,
      selectedPlace: freezed == selectedPlace
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as PlaceModel?,
    ));
  }
}

/// @nodoc

class _$MapFilterDataStateImpl implements _MapFilterDataState {
  _$MapFilterDataStateImpl(
      {final List<PlaceModel> filteredPlaces = const [],
      final List<TravelModel> filteredTravels = const [],
      required this.placeFilter,
      required this.travelFilter,
      this.selectedPlace})
      : _filteredPlaces = filteredPlaces,
        _filteredTravels = filteredTravels;

  final List<PlaceModel> _filteredPlaces;
  @override
  @JsonKey()
  List<PlaceModel> get filteredPlaces {
    if (_filteredPlaces is EqualUnmodifiableListView) return _filteredPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPlaces);
  }

  final List<TravelModel> _filteredTravels;
  @override
  @JsonKey()
  List<TravelModel> get filteredTravels {
    if (_filteredTravels is EqualUnmodifiableListView) return _filteredTravels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTravels);
  }

  @override
  final PlaceFilter placeFilter;
  @override
  final TravelFilter travelFilter;
  @override
  final PlaceModel? selectedPlace;

  @override
  String toString() {
    return 'MapFilterDataState(filteredPlaces: $filteredPlaces, filteredTravels: $filteredTravels, placeFilter: $placeFilter, travelFilter: $travelFilter, selectedPlace: $selectedPlace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapFilterDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._filteredPlaces, _filteredPlaces) &&
            const DeepCollectionEquality()
                .equals(other._filteredTravels, _filteredTravels) &&
            (identical(other.placeFilter, placeFilter) ||
                other.placeFilter == placeFilter) &&
            (identical(other.travelFilter, travelFilter) ||
                other.travelFilter == travelFilter) &&
            (identical(other.selectedPlace, selectedPlace) ||
                other.selectedPlace == selectedPlace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_filteredPlaces),
      const DeepCollectionEquality().hash(_filteredTravels),
      placeFilter,
      travelFilter,
      selectedPlace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapFilterDataStateImplCopyWith<_$MapFilterDataStateImpl> get copyWith =>
      __$$MapFilterDataStateImplCopyWithImpl<_$MapFilterDataStateImpl>(
          this, _$identity);
}

abstract class _MapFilterDataState implements MapFilterDataState {
  factory _MapFilterDataState(
      {final List<PlaceModel> filteredPlaces,
      final List<TravelModel> filteredTravels,
      required final PlaceFilter placeFilter,
      required final TravelFilter travelFilter,
      final PlaceModel? selectedPlace}) = _$MapFilterDataStateImpl;

  @override
  List<PlaceModel> get filteredPlaces;
  @override
  List<TravelModel> get filteredTravels;
  @override
  PlaceFilter get placeFilter;
  @override
  TravelFilter get travelFilter;
  @override
  PlaceModel? get selectedPlace;
  @override
  @JsonKey(ignore: true)
  _$$MapFilterDataStateImplCopyWith<_$MapFilterDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
