// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_create_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelCreateUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisitArea area) moveArea,
    required TResult Function(Travel travel, DateTimeRange travelDates)
        complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VisitArea area)? moveArea,
    TResult? Function(Travel travel, DateTimeRange travelDates)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisitArea area)? moveArea,
    TResult Function(Travel travel, DateTimeRange travelDates)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveArea value) moveArea,
    required TResult Function(_Complete value) complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveArea value)? moveArea,
    TResult? Function(_Complete value)? complete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveArea value)? moveArea,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateUiEventCopyWith<$Res> {
  factory $TravelCreateUiEventCopyWith(
          TravelCreateUiEvent value, $Res Function(TravelCreateUiEvent) then) =
      _$TravelCreateUiEventCopyWithImpl<$Res, TravelCreateUiEvent>;
}

/// @nodoc
class _$TravelCreateUiEventCopyWithImpl<$Res, $Val extends TravelCreateUiEvent>
    implements $TravelCreateUiEventCopyWith<$Res> {
  _$TravelCreateUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoveAreaImplCopyWith<$Res> {
  factory _$$MoveAreaImplCopyWith(
          _$MoveAreaImpl value, $Res Function(_$MoveAreaImpl) then) =
      __$$MoveAreaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VisitArea area});

  $VisitAreaCopyWith<$Res> get area;
}

/// @nodoc
class __$$MoveAreaImplCopyWithImpl<$Res>
    extends _$TravelCreateUiEventCopyWithImpl<$Res, _$MoveAreaImpl>
    implements _$$MoveAreaImplCopyWith<$Res> {
  __$$MoveAreaImplCopyWithImpl(
      _$MoveAreaImpl _value, $Res Function(_$MoveAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
  }) {
    return _then(_$MoveAreaImpl(
      null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as VisitArea,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitAreaCopyWith<$Res> get area {
    return $VisitAreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc

class _$MoveAreaImpl implements _MoveArea {
  const _$MoveAreaImpl(this.area);

  @override
  final VisitArea area;

  @override
  String toString() {
    return 'TravelCreateUiEvent.moveArea(area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveAreaImpl &&
            (identical(other.area, area) || other.area == area));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveAreaImplCopyWith<_$MoveAreaImpl> get copyWith =>
      __$$MoveAreaImplCopyWithImpl<_$MoveAreaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisitArea area) moveArea,
    required TResult Function(Travel travel, DateTimeRange travelDates)
        complete,
  }) {
    return moveArea(area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VisitArea area)? moveArea,
    TResult? Function(Travel travel, DateTimeRange travelDates)? complete,
  }) {
    return moveArea?.call(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisitArea area)? moveArea,
    TResult Function(Travel travel, DateTimeRange travelDates)? complete,
    required TResult orElse(),
  }) {
    if (moveArea != null) {
      return moveArea(area);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveArea value) moveArea,
    required TResult Function(_Complete value) complete,
  }) {
    return moveArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveArea value)? moveArea,
    TResult? Function(_Complete value)? complete,
  }) {
    return moveArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveArea value)? moveArea,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (moveArea != null) {
      return moveArea(this);
    }
    return orElse();
  }
}

abstract class _MoveArea implements TravelCreateUiEvent {
  const factory _MoveArea(final VisitArea area) = _$MoveAreaImpl;

  VisitArea get area;
  @JsonKey(ignore: true)
  _$$MoveAreaImplCopyWith<_$MoveAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteImplCopyWith<$Res> {
  factory _$$CompleteImplCopyWith(
          _$CompleteImpl value, $Res Function(_$CompleteImpl) then) =
      __$$CompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Travel travel, DateTimeRange travelDates});

  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class __$$CompleteImplCopyWithImpl<$Res>
    extends _$TravelCreateUiEventCopyWithImpl<$Res, _$CompleteImpl>
    implements _$$CompleteImplCopyWith<$Res> {
  __$$CompleteImplCopyWithImpl(
      _$CompleteImpl _value, $Res Function(_$CompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
    Object? travelDates = null,
  }) {
    return _then(_$CompleteImpl(
      null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      null == travelDates
          ? _value.travelDates
          : travelDates // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
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

class _$CompleteImpl implements _Complete {
  const _$CompleteImpl(this.travel, this.travelDates);

  @override
  final Travel travel;
  @override
  final DateTimeRange travelDates;

  @override
  String toString() {
    return 'TravelCreateUiEvent.complete(travel: $travel, travelDates: $travelDates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteImpl &&
            (identical(other.travel, travel) || other.travel == travel) &&
            (identical(other.travelDates, travelDates) ||
                other.travelDates == travelDates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travel, travelDates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      __$$CompleteImplCopyWithImpl<_$CompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisitArea area) moveArea,
    required TResult Function(Travel travel, DateTimeRange travelDates)
        complete,
  }) {
    return complete(travel, travelDates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VisitArea area)? moveArea,
    TResult? Function(Travel travel, DateTimeRange travelDates)? complete,
  }) {
    return complete?.call(travel, travelDates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisitArea area)? moveArea,
    TResult Function(Travel travel, DateTimeRange travelDates)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(travel, travelDates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveArea value) moveArea,
    required TResult Function(_Complete value) complete,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveArea value)? moveArea,
    TResult? Function(_Complete value)? complete,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveArea value)? moveArea,
    TResult Function(_Complete value)? complete,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class _Complete implements TravelCreateUiEvent {
  const factory _Complete(
      final Travel travel, final DateTimeRange travelDates) = _$CompleteImpl;

  Travel get travel;
  DateTimeRange get travelDates;
  @JsonKey(ignore: true)
  _$$CompleteImplCopyWith<_$CompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
