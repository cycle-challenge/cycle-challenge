// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelCreateState {
  Travel get travel => throw _privateConstructorUsedError;
  double get panelHeight => throw _privateConstructorUsedError;
  List<Visit> get visits => throw _privateConstructorUsedError;
  List<TravelGroupItem> get group => throw _privateConstructorUsedError;
  DateTimeRange? get travelDates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCreateStateCopyWith<TravelCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateStateCopyWith<$Res> {
  factory $TravelCreateStateCopyWith(
          TravelCreateState value, $Res Function(TravelCreateState) then) =
      _$TravelCreateStateCopyWithImpl<$Res, TravelCreateState>;
  @useResult
  $Res call(
      {Travel travel,
      double panelHeight,
      List<Visit> visits,
      List<TravelGroupItem> group,
      DateTimeRange? travelDates});

  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class _$TravelCreateStateCopyWithImpl<$Res, $Val extends TravelCreateState>
    implements $TravelCreateStateCopyWith<$Res> {
  _$TravelCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
    Object? panelHeight = null,
    Object? visits = null,
    Object? group = null,
    Object? travelDates = freezed,
  }) {
    return _then(_value.copyWith(
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      panelHeight: null == panelHeight
          ? _value.panelHeight
          : panelHeight // ignore: cast_nullable_to_non_nullable
              as double,
      visits: null == visits
          ? _value.visits
          : visits // ignore: cast_nullable_to_non_nullable
              as List<Visit>,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<TravelGroupItem>,
      travelDates: freezed == travelDates
          ? _value.travelDates
          : travelDates // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCopyWith<$Res> get travel {
    return $TravelCopyWith<$Res>(_value.travel, (value) {
      return _then(_value.copyWith(travel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelCreateStateImplCopyWith<$Res>
    implements $TravelCreateStateCopyWith<$Res> {
  factory _$$TravelCreateStateImplCopyWith(_$TravelCreateStateImpl value,
          $Res Function(_$TravelCreateStateImpl) then) =
      __$$TravelCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Travel travel,
      double panelHeight,
      List<Visit> visits,
      List<TravelGroupItem> group,
      DateTimeRange? travelDates});

  @override
  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class __$$TravelCreateStateImplCopyWithImpl<$Res>
    extends _$TravelCreateStateCopyWithImpl<$Res, _$TravelCreateStateImpl>
    implements _$$TravelCreateStateImplCopyWith<$Res> {
  __$$TravelCreateStateImplCopyWithImpl(_$TravelCreateStateImpl _value,
      $Res Function(_$TravelCreateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
    Object? panelHeight = null,
    Object? visits = null,
    Object? group = null,
    Object? travelDates = freezed,
  }) {
    return _then(_$TravelCreateStateImpl(
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      panelHeight: null == panelHeight
          ? _value.panelHeight
          : panelHeight // ignore: cast_nullable_to_non_nullable
              as double,
      visits: null == visits
          ? _value._visits
          : visits // ignore: cast_nullable_to_non_nullable
              as List<Visit>,
      group: null == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<TravelGroupItem>,
      travelDates: freezed == travelDates
          ? _value.travelDates
          : travelDates // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ));
  }
}

/// @nodoc

class _$TravelCreateStateImpl implements _TravelCreateState {
  _$TravelCreateStateImpl(
      {required this.travel,
      this.panelHeight = 0.0,
      final List<Visit> visits = const [],
      final List<TravelGroupItem> group = const [],
      this.travelDates})
      : _visits = visits,
        _group = group;

  @override
  final Travel travel;
  @override
  @JsonKey()
  final double panelHeight;
  final List<Visit> _visits;
  @override
  @JsonKey()
  List<Visit> get visits {
    if (_visits is EqualUnmodifiableListView) return _visits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visits);
  }

  final List<TravelGroupItem> _group;
  @override
  @JsonKey()
  List<TravelGroupItem> get group {
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_group);
  }

  @override
  final DateTimeRange? travelDates;

  @override
  String toString() {
    return 'TravelCreateState(travel: $travel, panelHeight: $panelHeight, visits: $visits, group: $group, travelDates: $travelDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCreateStateImpl &&
            (identical(other.travel, travel) || other.travel == travel) &&
            (identical(other.panelHeight, panelHeight) ||
                other.panelHeight == panelHeight) &&
            const DeepCollectionEquality().equals(other._visits, _visits) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            (identical(other.travelDates, travelDates) ||
                other.travelDates == travelDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      travel,
      panelHeight,
      const DeepCollectionEquality().hash(_visits),
      const DeepCollectionEquality().hash(_group),
      travelDates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCreateStateImplCopyWith<_$TravelCreateStateImpl> get copyWith =>
      __$$TravelCreateStateImplCopyWithImpl<_$TravelCreateStateImpl>(
          this, _$identity);
}

abstract class _TravelCreateState implements TravelCreateState {
  factory _TravelCreateState(
      {required final Travel travel,
      final double panelHeight,
      final List<Visit> visits,
      final List<TravelGroupItem> group,
      final DateTimeRange? travelDates}) = _$TravelCreateStateImpl;

  @override
  Travel get travel;
  @override
  double get panelHeight;
  @override
  List<Visit> get visits;
  @override
  List<TravelGroupItem> get group;
  @override
  DateTimeRange? get travelDates;
  @override
  @JsonKey(ignore: true)
  _$$TravelCreateStateImplCopyWith<_$TravelCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
