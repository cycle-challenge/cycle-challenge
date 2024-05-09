// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_add_visit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelAddVisitState {
  List<Place> get selectedPlaces => throw _privateConstructorUsedError;
  PlaceFilter get placeFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelAddVisitStateCopyWith<TravelAddVisitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelAddVisitStateCopyWith<$Res> {
  factory $TravelAddVisitStateCopyWith(
          TravelAddVisitState value, $Res Function(TravelAddVisitState) then) =
      _$TravelAddVisitStateCopyWithImpl<$Res, TravelAddVisitState>;
  @useResult
  $Res call({List<Place> selectedPlaces, PlaceFilter placeFilter});
}

/// @nodoc
class _$TravelAddVisitStateCopyWithImpl<$Res, $Val extends TravelAddVisitState>
    implements $TravelAddVisitStateCopyWith<$Res> {
  _$TravelAddVisitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaces = null,
    Object? placeFilter = null,
  }) {
    return _then(_value.copyWith(
      selectedPlaces: null == selectedPlaces
          ? _value.selectedPlaces
          : selectedPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      placeFilter: null == placeFilter
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelAddVisitStateImplCopyWith<$Res>
    implements $TravelAddVisitStateCopyWith<$Res> {
  factory _$$TravelAddVisitStateImplCopyWith(_$TravelAddVisitStateImpl value,
          $Res Function(_$TravelAddVisitStateImpl) then) =
      __$$TravelAddVisitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place> selectedPlaces, PlaceFilter placeFilter});
}

/// @nodoc
class __$$TravelAddVisitStateImplCopyWithImpl<$Res>
    extends _$TravelAddVisitStateCopyWithImpl<$Res, _$TravelAddVisitStateImpl>
    implements _$$TravelAddVisitStateImplCopyWith<$Res> {
  __$$TravelAddVisitStateImplCopyWithImpl(_$TravelAddVisitStateImpl _value,
      $Res Function(_$TravelAddVisitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaces = null,
    Object? placeFilter = null,
  }) {
    return _then(_$TravelAddVisitStateImpl(
      selectedPlaces: null == selectedPlaces
          ? _value._selectedPlaces
          : selectedPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      placeFilter: null == placeFilter
          ? _value.placeFilter
          : placeFilter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
    ));
  }
}

/// @nodoc

class _$TravelAddVisitStateImpl implements _TravelAddVisitState {
  _$TravelAddVisitStateImpl(
      {final List<Place> selectedPlaces = const [], required this.placeFilter})
      : _selectedPlaces = selectedPlaces;

  final List<Place> _selectedPlaces;
  @override
  @JsonKey()
  List<Place> get selectedPlaces {
    if (_selectedPlaces is EqualUnmodifiableListView) return _selectedPlaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPlaces);
  }

  @override
  final PlaceFilter placeFilter;

  @override
  String toString() {
    return 'TravelAddVisitState(selectedPlaces: $selectedPlaces, placeFilter: $placeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelAddVisitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedPlaces, _selectedPlaces) &&
            (identical(other.placeFilter, placeFilter) ||
                other.placeFilter == placeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedPlaces), placeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelAddVisitStateImplCopyWith<_$TravelAddVisitStateImpl> get copyWith =>
      __$$TravelAddVisitStateImplCopyWithImpl<_$TravelAddVisitStateImpl>(
          this, _$identity);
}

abstract class _TravelAddVisitState implements TravelAddVisitState {
  factory _TravelAddVisitState(
      {final List<Place> selectedPlaces,
      required final PlaceFilter placeFilter}) = _$TravelAddVisitStateImpl;

  @override
  List<Place> get selectedPlaces;
  @override
  PlaceFilter get placeFilter;
  @override
  @JsonKey(ignore: true)
  _$$TravelAddVisitStateImplCopyWith<_$TravelAddVisitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
