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
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TravelCreateChangePanelHeightEvent value)
        changePanelHeight,
    required TResult Function(TravelCreateSetTravelDatesEvent value)
        setTravelDates,
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
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
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
  }) {
    return changePanelHeight(height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
  }) {
    return changePanelHeight?.call(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
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
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
  }) {
    return changePanelHeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
  }) {
    return changePanelHeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
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
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
  }) {
    return setTravelDates(travelDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
  }) {
    return setTravelDates?.call(travelDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
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
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
  }) {
    return setTravelDates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
  }) {
    return setTravelDates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
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
    required TResult Function(int oldIndex, int newIndex) reorderVisit,
  }) {
    return reorderVisit(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double height)? changePanelHeight,
    TResult? Function(DateTimeRange? travelDates)? setTravelDates,
    TResult? Function(int oldIndex, int newIndex)? reorderVisit,
  }) {
    return reorderVisit?.call(oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double height)? changePanelHeight,
    TResult Function(DateTimeRange? travelDates)? setTravelDates,
    TResult Function(int oldIndex, int newIndex)? reorderVisit,
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
    required TResult Function(TravelReorderVisitEvent value) reorderVisit,
  }) {
    return reorderVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult? Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult? Function(TravelReorderVisitEvent value)? reorderVisit,
  }) {
    return reorderVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TravelCreateChangePanelHeightEvent value)?
        changePanelHeight,
    TResult Function(TravelCreateSetTravelDatesEvent value)? setTravelDates,
    TResult Function(TravelReorderVisitEvent value)? reorderVisit,
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
