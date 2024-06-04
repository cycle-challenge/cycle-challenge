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
  List<Place> get filteredPlaces => throw _privateConstructorUsedError;
  List<Travel> get filteredTravels => throw _privateConstructorUsedError;
  PlaceSortOption get placeSortOption => throw _privateConstructorUsedError;
  PlaceFilter get placeFilter => throw _privateConstructorUsedError;
  TravelFilter get travelFilter => throw _privateConstructorUsedError;
  Place? get selectedPlace => throw _privateConstructorUsedError;

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
      {List<Place> filteredPlaces,
      List<Travel> filteredTravels,
      PlaceSortOption placeSortOption,
      PlaceFilter placeFilter,
      TravelFilter travelFilter,
      Place? selectedPlace});

  $PlaceSortOptionCopyWith<$Res> get placeSortOption;
  $PlaceCopyWith<$Res>? get selectedPlace;
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
    Object? placeSortOption = null,
    Object? placeFilter = null,
    Object? travelFilter = null,
    Object? selectedPlace = freezed,
  }) {
    return _then(_value.copyWith(
      filteredPlaces: null == filteredPlaces
          ? _value.filteredPlaces
          : filteredPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      filteredTravels: null == filteredTravels
          ? _value.filteredTravels
          : filteredTravels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
      placeSortOption: null == placeSortOption
          ? _value.placeSortOption
          : placeSortOption // ignore: cast_nullable_to_non_nullable
              as PlaceSortOption,
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
              as Place?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceSortOptionCopyWith<$Res> get placeSortOption {
    return $PlaceSortOptionCopyWith<$Res>(_value.placeSortOption, (value) {
      return _then(_value.copyWith(placeSortOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get selectedPlace {
    if (_value.selectedPlace == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.selectedPlace!, (value) {
      return _then(_value.copyWith(selectedPlace: value) as $Val);
    });
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
      {List<Place> filteredPlaces,
      List<Travel> filteredTravels,
      PlaceSortOption placeSortOption,
      PlaceFilter placeFilter,
      TravelFilter travelFilter,
      Place? selectedPlace});

  @override
  $PlaceSortOptionCopyWith<$Res> get placeSortOption;
  @override
  $PlaceCopyWith<$Res>? get selectedPlace;
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
    Object? placeSortOption = null,
    Object? placeFilter = null,
    Object? travelFilter = null,
    Object? selectedPlace = freezed,
  }) {
    return _then(_$MapFilterDataStateImpl(
      filteredPlaces: null == filteredPlaces
          ? _value._filteredPlaces
          : filteredPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      filteredTravels: null == filteredTravels
          ? _value._filteredTravels
          : filteredTravels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
      placeSortOption: null == placeSortOption
          ? _value.placeSortOption
          : placeSortOption // ignore: cast_nullable_to_non_nullable
              as PlaceSortOption,
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
              as Place?,
    ));
  }
}

/// @nodoc

class _$MapFilterDataStateImpl implements _MapFilterDataState {
  _$MapFilterDataStateImpl(
      {final List<Place> filteredPlaces = const [],
      final List<Travel> filteredTravels = const [],
      this.placeSortOption = const PlaceSortOption.highestRated(),
      required this.placeFilter,
      required this.travelFilter,
      this.selectedPlace})
      : _filteredPlaces = filteredPlaces,
        _filteredTravels = filteredTravels;

  final List<Place> _filteredPlaces;
  @override
  @JsonKey()
  List<Place> get filteredPlaces {
    if (_filteredPlaces is EqualUnmodifiableListView) return _filteredPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredPlaces);
  }

  final List<Travel> _filteredTravels;
  @override
  @JsonKey()
  List<Travel> get filteredTravels {
    if (_filteredTravels is EqualUnmodifiableListView) return _filteredTravels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTravels);
  }

  @override
  @JsonKey()
  final PlaceSortOption placeSortOption;
  @override
  final PlaceFilter placeFilter;
  @override
  final TravelFilter travelFilter;
  @override
  final Place? selectedPlace;

  @override
  String toString() {
    return 'MapFilterDataState(filteredPlaces: $filteredPlaces, filteredTravels: $filteredTravels, placeSortOption: $placeSortOption, placeFilter: $placeFilter, travelFilter: $travelFilter, selectedPlace: $selectedPlace)';
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
            (identical(other.placeSortOption, placeSortOption) ||
                other.placeSortOption == placeSortOption) &&
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
      placeSortOption,
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
      {final List<Place> filteredPlaces,
      final List<Travel> filteredTravels,
      final PlaceSortOption placeSortOption,
      required final PlaceFilter placeFilter,
      required final TravelFilter travelFilter,
      final Place? selectedPlace}) = _$MapFilterDataStateImpl;

  @override
  List<Place> get filteredPlaces;
  @override
  List<Travel> get filteredTravels;
  @override
  PlaceSortOption get placeSortOption;
  @override
  PlaceFilter get placeFilter;
  @override
  TravelFilter get travelFilter;
  @override
  Place? get selectedPlace;
  @override
  @JsonKey(ignore: true)
  _$$MapFilterDataStateImplCopyWith<_$MapFilterDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
