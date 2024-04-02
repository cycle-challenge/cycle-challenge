// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDetailUIEvent {
  Bound get bound => throw _privateConstructorUsedError;
  int get zoomLevel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound, int zoomLevel) moveBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound, int zoomLevel)? moveBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound, int zoomLevel)? moveBound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDetailUIEventCopyWith<TravelDetailUIEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailUIEventCopyWith<$Res> {
  factory $TravelDetailUIEventCopyWith(
          TravelDetailUIEvent value, $Res Function(TravelDetailUIEvent) then) =
      _$TravelDetailUIEventCopyWithImpl<$Res, TravelDetailUIEvent>;
  @useResult
  $Res call({Bound bound, int zoomLevel});
}

/// @nodoc
class _$TravelDetailUIEventCopyWithImpl<$Res, $Val extends TravelDetailUIEvent>
    implements $TravelDetailUIEventCopyWith<$Res> {
  _$TravelDetailUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bound = null,
    Object? zoomLevel = null,
  }) {
    return _then(_value.copyWith(
      bound: null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      zoomLevel: null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$moveBoundEventImplCopyWith<$Res>
    implements $TravelDetailUIEventCopyWith<$Res> {
  factory _$$moveBoundEventImplCopyWith(_$moveBoundEventImpl value,
          $Res Function(_$moveBoundEventImpl) then) =
      __$$moveBoundEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bound bound, int zoomLevel});
}

/// @nodoc
class __$$moveBoundEventImplCopyWithImpl<$Res>
    extends _$TravelDetailUIEventCopyWithImpl<$Res, _$moveBoundEventImpl>
    implements _$$moveBoundEventImplCopyWith<$Res> {
  __$$moveBoundEventImplCopyWithImpl(
      _$moveBoundEventImpl _value, $Res Function(_$moveBoundEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bound = null,
    Object? zoomLevel = null,
  }) {
    return _then(_$moveBoundEventImpl(
      null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
      null == zoomLevel
          ? _value.zoomLevel
          : zoomLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$moveBoundEventImpl implements moveBoundEvent {
  const _$moveBoundEventImpl(this.bound, this.zoomLevel);

  @override
  final Bound bound;
  @override
  final int zoomLevel;

  @override
  String toString() {
    return 'TravelDetailUIEvent.moveBound(bound: $bound, zoomLevel: $zoomLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$moveBoundEventImpl &&
            (identical(other.bound, bound) || other.bound == bound) &&
            (identical(other.zoomLevel, zoomLevel) ||
                other.zoomLevel == zoomLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bound, zoomLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$moveBoundEventImplCopyWith<_$moveBoundEventImpl> get copyWith =>
      __$$moveBoundEventImplCopyWithImpl<_$moveBoundEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound, int zoomLevel) moveBound,
  }) {
    return moveBound(bound, zoomLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound, int zoomLevel)? moveBound,
  }) {
    return moveBound?.call(bound, zoomLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound, int zoomLevel)? moveBound,
    required TResult orElse(),
  }) {
    if (moveBound != null) {
      return moveBound(bound, zoomLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
  }) {
    return moveBound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
  }) {
    return moveBound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    required TResult orElse(),
  }) {
    if (moveBound != null) {
      return moveBound(this);
    }
    return orElse();
  }
}

abstract class moveBoundEvent implements TravelDetailUIEvent {
  const factory moveBoundEvent(final Bound bound, final int zoomLevel) =
      _$moveBoundEventImpl;

  @override
  Bound get bound;
  @override
  int get zoomLevel;
  @override
  @JsonKey(ignore: true)
  _$$moveBoundEventImplCopyWith<_$moveBoundEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
