// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_create_add_visit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelCreateAddVisitState {
  List<Place> get selectedPlaces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCreateAddVisitStateCopyWith<TravelCreateAddVisitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateAddVisitStateCopyWith<$Res> {
  factory $TravelCreateAddVisitStateCopyWith(TravelCreateAddVisitState value,
          $Res Function(TravelCreateAddVisitState) then) =
      _$TravelCreateAddVisitStateCopyWithImpl<$Res, TravelCreateAddVisitState>;
  @useResult
  $Res call({List<Place> selectedPlaces});
}

/// @nodoc
class _$TravelCreateAddVisitStateCopyWithImpl<$Res,
        $Val extends TravelCreateAddVisitState>
    implements $TravelCreateAddVisitStateCopyWith<$Res> {
  _$TravelCreateAddVisitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaces = null,
  }) {
    return _then(_value.copyWith(
      selectedPlaces: null == selectedPlaces
          ? _value.selectedPlaces
          : selectedPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelCreateAddVisitStateImplCopyWith<$Res>
    implements $TravelCreateAddVisitStateCopyWith<$Res> {
  factory _$$TravelCreateAddVisitStateImplCopyWith(
          _$TravelCreateAddVisitStateImpl value,
          $Res Function(_$TravelCreateAddVisitStateImpl) then) =
      __$$TravelCreateAddVisitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place> selectedPlaces});
}

/// @nodoc
class __$$TravelCreateAddVisitStateImplCopyWithImpl<$Res>
    extends _$TravelCreateAddVisitStateCopyWithImpl<$Res,
        _$TravelCreateAddVisitStateImpl>
    implements _$$TravelCreateAddVisitStateImplCopyWith<$Res> {
  __$$TravelCreateAddVisitStateImplCopyWithImpl(
      _$TravelCreateAddVisitStateImpl _value,
      $Res Function(_$TravelCreateAddVisitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPlaces = null,
  }) {
    return _then(_$TravelCreateAddVisitStateImpl(
      selectedPlaces: null == selectedPlaces
          ? _value._selectedPlaces
          : selectedPlaces // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$TravelCreateAddVisitStateImpl implements _TravelCreateAddVisitState {
  _$TravelCreateAddVisitStateImpl({final List<Place> selectedPlaces = const []})
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
  String toString() {
    return 'TravelCreateAddVisitState(selectedPlaces: $selectedPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCreateAddVisitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedPlaces, _selectedPlaces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedPlaces));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCreateAddVisitStateImplCopyWith<_$TravelCreateAddVisitStateImpl>
      get copyWith => __$$TravelCreateAddVisitStateImplCopyWithImpl<
          _$TravelCreateAddVisitStateImpl>(this, _$identity);
}

abstract class _TravelCreateAddVisitState implements TravelCreateAddVisitState {
  factory _TravelCreateAddVisitState({final List<Place> selectedPlaces}) =
      _$TravelCreateAddVisitStateImpl;

  @override
  List<Place> get selectedPlaces;
  @override
  @JsonKey(ignore: true)
  _$$TravelCreateAddVisitStateImplCopyWith<_$TravelCreateAddVisitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
