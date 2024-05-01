// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_create_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateEventCopyWith<$Res> {
  factory $TravelCreateEventCopyWith(
          TravelCreateEvent value, $Res Function(TravelCreateEvent) then) =
      _$TravelCreateEventCopyWithImpl<$Res, TravelCreateEvent>;
}

/// @nodoc
class _$TravelCreateEventCopyWithImpl<$Res, $Val extends TravelCreateEvent>
    implements $TravelCreateEventCopyWith<$Res> {
  _$TravelCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TravelCreateChangePanelHeightEventImplCopyWith<$Res> {
  factory _$$TravelCreateChangePanelHeightEventImplCopyWith(
          _$TravelCreateChangePanelHeightEventImpl value,
          $Res Function(_$TravelCreateChangePanelHeightEventImpl) then) =
      __$$TravelCreateChangePanelHeightEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double height});
}

/// @nodoc
class __$$TravelCreateChangePanelHeightEventImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res,
        _$TravelCreateChangePanelHeightEventImpl>
    implements _$$TravelCreateChangePanelHeightEventImplCopyWith<$Res> {
  __$$TravelCreateChangePanelHeightEventImplCopyWithImpl(
      _$TravelCreateChangePanelHeightEventImpl _value,
      $Res Function(_$TravelCreateChangePanelHeightEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
  }) {
    return _then(_$TravelCreateChangePanelHeightEventImpl(
      null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TravelCreateChangePanelHeightEventImpl
    implements TravelCreateChangePanelHeightEvent {
  const _$TravelCreateChangePanelHeightEventImpl(this.height);

  @override
  final double height;

  @override
  String toString() {
    return 'TravelCreateEvent.changePanelHeight(height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCreateChangePanelHeightEventImpl &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCreateChangePanelHeightEventImplCopyWith<
          _$TravelCreateChangePanelHeightEventImpl>
      get copyWith => __$$TravelCreateChangePanelHeightEventImplCopyWithImpl<
          _$TravelCreateChangePanelHeightEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return changePanelHeight(height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return changePanelHeight?.call(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (changePanelHeight != null) {
      return changePanelHeight(height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return changePanelHeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return changePanelHeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (changePanelHeight != null) {
      return changePanelHeight(this);
    }
    return orElse();
  }
}

abstract class TravelCreateChangePanelHeightEvent implements TravelCreateEvent {
  const factory TravelCreateChangePanelHeightEvent(final double height) =
      _$TravelCreateChangePanelHeightEventImpl;

  double get height;
  @JsonKey(ignore: true)
  _$$TravelCreateChangePanelHeightEventImplCopyWith<
          _$TravelCreateChangePanelHeightEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelCreateSetTravelDatesEventImplCopyWith<$Res> {
  factory _$$TravelCreateSetTravelDatesEventImplCopyWith(
          _$TravelCreateSetTravelDatesEventImpl value,
          $Res Function(_$TravelCreateSetTravelDatesEventImpl) then) =
      __$$TravelCreateSetTravelDatesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange? travelDates});
}

/// @nodoc
class __$$TravelCreateSetTravelDatesEventImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res,
        _$TravelCreateSetTravelDatesEventImpl>
    implements _$$TravelCreateSetTravelDatesEventImplCopyWith<$Res> {
  __$$TravelCreateSetTravelDatesEventImplCopyWithImpl(
      _$TravelCreateSetTravelDatesEventImpl _value,
      $Res Function(_$TravelCreateSetTravelDatesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelDates = freezed,
  }) {
    return _then(_$TravelCreateSetTravelDatesEventImpl(
      freezed == travelDates
          ? _value.travelDates
          : travelDates // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ));
  }
}

/// @nodoc

class _$TravelCreateSetTravelDatesEventImpl
    implements TravelCreateSetTravelDatesEvent {
  const _$TravelCreateSetTravelDatesEventImpl(this.travelDates);

  @override
  final DateTimeRange? travelDates;

  @override
  String toString() {
    return 'TravelCreateEvent.setTravelDates(travelDates: $travelDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCreateSetTravelDatesEventImpl &&
            (identical(other.travelDates, travelDates) ||
                other.travelDates == travelDates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travelDates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCreateSetTravelDatesEventImplCopyWith<
          _$TravelCreateSetTravelDatesEventImpl>
      get copyWith => __$$TravelCreateSetTravelDatesEventImplCopyWithImpl<
          _$TravelCreateSetTravelDatesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return setTravelDates(travelDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return setTravelDates?.call(travelDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (setTravelDates != null) {
      return setTravelDates(travelDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return setTravelDates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return setTravelDates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (setTravelDates != null) {
      return setTravelDates(this);
    }
    return orElse();
  }
}

abstract class TravelCreateSetTravelDatesEvent implements TravelCreateEvent {
  const factory TravelCreateSetTravelDatesEvent(
      final DateTimeRange? travelDates) = _$TravelCreateSetTravelDatesEventImpl;

  DateTimeRange? get travelDates;
  @JsonKey(ignore: true)
  _$$TravelCreateSetTravelDatesEventImplCopyWith<
          _$TravelCreateSetTravelDatesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddVisitImplCopyWith<$Res> {
  factory _$$AddVisitImplCopyWith(
          _$AddVisitImpl value, $Res Function(_$AddVisitImpl) then) =
      __$$AddVisitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class __$$AddVisitImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res, _$AddVisitImpl>
    implements _$$AddVisitImplCopyWith<$Res> {
  __$$AddVisitImplCopyWithImpl(
      _$AddVisitImpl _value, $Res Function(_$AddVisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$AddVisitImpl(
      null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$AddVisitImpl implements _AddVisit {
  const _$AddVisitImpl(final List<Place> places) : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'TravelCreateEvent.addVisit(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVisitImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVisitImplCopyWith<_$AddVisitImpl> get copyWith =>
      __$$AddVisitImplCopyWithImpl<_$AddVisitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return addVisit(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return addVisit?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (addVisit != null) {
      return addVisit(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return addVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return addVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (addVisit != null) {
      return addVisit(this);
    }
    return orElse();
  }
}

abstract class _AddVisit implements TravelCreateEvent {
  const factory _AddVisit(final List<Place> places) = _$AddVisitImpl;

  List<Place> get places;
  @JsonKey(ignore: true)
  _$$AddVisitImplCopyWith<_$AddVisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVisitImplCopyWith<$Res> {
  factory _$$DeleteVisitImplCopyWith(
          _$DeleteVisitImpl value, $Res Function(_$DeleteVisitImpl) then) =
      __$$DeleteVisitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteVisitImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res, _$DeleteVisitImpl>
    implements _$$DeleteVisitImplCopyWith<$Res> {
  __$$DeleteVisitImplCopyWithImpl(
      _$DeleteVisitImpl _value, $Res Function(_$DeleteVisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteVisitImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteVisitImpl implements _DeleteVisit {
  const _$DeleteVisitImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TravelCreateEvent.deleteVisit(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVisitImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVisitImplCopyWith<_$DeleteVisitImpl> get copyWith =>
      __$$DeleteVisitImplCopyWithImpl<_$DeleteVisitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return deleteVisit(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return deleteVisit?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (deleteVisit != null) {
      return deleteVisit(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return deleteVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return deleteVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (deleteVisit != null) {
      return deleteVisit(this);
    }
    return orElse();
  }
}

abstract class _DeleteVisit implements TravelCreateEvent {
  const factory _DeleteVisit(final int index) = _$DeleteVisitImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteVisitImplCopyWith<_$DeleteVisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelReorderVisitEventImplCopyWith<$Res> {
  factory _$$TravelReorderVisitEventImplCopyWith(
          _$TravelReorderVisitEventImpl value,
          $Res Function(_$TravelReorderVisitEventImpl) then) =
      __$$TravelReorderVisitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int oldIndex, int newIndex});
}

/// @nodoc
class __$$TravelReorderVisitEventImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res, _$TravelReorderVisitEventImpl>
    implements _$$TravelReorderVisitEventImplCopyWith<$Res> {
  __$$TravelReorderVisitEventImplCopyWithImpl(
      _$TravelReorderVisitEventImpl _value,
      $Res Function(_$TravelReorderVisitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldIndex = null,
    Object? newIndex = null,
  }) {
    return _then(_$TravelReorderVisitEventImpl(
      null == oldIndex
          ? _value.oldIndex
          : oldIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TravelReorderVisitEventImpl implements TravelReorderVisitEvent {
  const _$TravelReorderVisitEventImpl(this.oldIndex, this.newIndex);

  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'TravelCreateEvent.reorderVisit(oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelReorderVisitEventImpl &&
            (identical(other.oldIndex, oldIndex) ||
                other.oldIndex == oldIndex) &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldIndex, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelReorderVisitEventImplCopyWith<_$TravelReorderVisitEventImpl>
      get copyWith => __$$TravelReorderVisitEventImplCopyWithImpl<
          _$TravelReorderVisitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return reorderVisit(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return reorderVisit?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (reorderVisit != null) {
      return reorderVisit(oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return reorderVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return reorderVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (reorderVisit != null) {
      return reorderVisit(this);
    }
    return orElse();
  }
}

abstract class TravelReorderVisitEvent implements TravelCreateEvent {
  const factory TravelReorderVisitEvent(
      final int oldIndex, final int newIndex) = _$TravelReorderVisitEventImpl;

  int get oldIndex;
  int get newIndex;
  @JsonKey(ignore: true)
  _$$TravelReorderVisitEventImplCopyWith<_$TravelReorderVisitEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteImplCopyWith<$Res> {
  factory _$$CompleteImplCopyWith(
          _$CompleteImpl value, $Res Function(_$CompleteImpl) then) =
      __$$CompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res, _$CompleteImpl>
    implements _$$CompleteImplCopyWith<$Res> {
  __$$CompleteImplCopyWithImpl(
      _$CompleteImpl _value, $Res Function(_$CompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteImpl implements _Complete {
  const _$CompleteImpl();

  @override
  String toString() {
    return 'TravelCreateEvent.complete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return complete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return complete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements TravelCreateEvent {
  const factory _Complete() = _$CompleteImpl;
}

/// @nodoc
abstract class _$$EditImplCopyWith<$Res> {
  factory _$$EditImplCopyWith(
          _$EditImpl value, $Res Function(_$EditImpl) then) =
      __$$EditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Travel travel});

  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class __$$EditImplCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res, _$EditImpl>
    implements _$$EditImplCopyWith<$Res> {
  __$$EditImplCopyWithImpl(_$EditImpl _value, $Res Function(_$EditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
  }) {
    return _then(_$EditImpl(
      null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCopyWith<$Res> get travel {
    return $TravelCopyWith<$Res>(_value.travel, (value) {
      return _then(_value.copyWith(travel: value));
    });
  }
}

/// @nodoc

class _$EditImpl implements _Edit {
  const _$EditImpl(this.travel);

  @override
  final Travel travel;

  @override
  String toString() {
    return 'TravelCreateEvent.edit(travel: $travel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditImpl &&
            (identical(other.travel, travel) || other.travel == travel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      __$$EditImplCopyWithImpl<_$EditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double height) changePanelHeight,
    required TResult Function(DateTimeRange? travelDates) setTravelDates,
    required TResult Function(List<Place> places) addVisit,
    required TResult Function(int index) deleteVisit,
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
    required TResult Function() complete,
    required TResult Function(Travel travel) edit,
  }) {
    return edit(travel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(List<Place> places)? addVisit,
    TResult? Function(int index)? deleteVisit,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
    TResult? Function()? complete,
    TResult? Function(Travel travel)? edit,
  }) {
    return edit?.call(travel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(List<Place> places)? addVisit,
    TResult Function(int index)? deleteVisit,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    TResult Function()? complete,
    TResult Function(Travel travel)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(travel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(_AddVisit value) addVisit,
    required TResult Function(_DeleteVisit value) deleteVisit,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
    required TResult Function(_Complete value) complete,
    required TResult Function(_Edit value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(_AddVisit value)? addVisit,
    TResult? Function(_DeleteVisit value)? deleteVisit,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult? Function(_Complete value)? complete,
    TResult? Function(_Edit value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(_AddVisit value)? addVisit,
    TResult Function(_DeleteVisit value)? deleteVisit,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
    TResult Function(_Complete value)? complete,
    TResult Function(_Edit value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class _Edit implements TravelCreateEvent {
  const factory _Edit(final Travel travel) = _$EditImpl;

  Travel get travel;
  @JsonKey(ignore: true)
  _$$EditImplCopyWith<_$EditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
