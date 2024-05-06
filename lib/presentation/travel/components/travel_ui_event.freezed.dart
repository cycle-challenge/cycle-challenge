// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelUiEvent {
  VisitArea get area => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VisitArea area) moveArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VisitArea area)? moveArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisitArea area)? moveArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveArea value) moveArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveArea value)? moveArea,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveArea value)? moveArea,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelUiEventCopyWith<TravelUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelUiEventCopyWith<$Res> {
  factory $TravelUiEventCopyWith(
          TravelUiEvent value, $Res Function(TravelUiEvent) then) =
      _$TravelUiEventCopyWithImpl<$Res, TravelUiEvent>;
  @useResult
  $Res call({VisitArea area});

  $VisitAreaCopyWith<$Res> get area;
}

/// @nodoc
class _$TravelUiEventCopyWithImpl<$Res, $Val extends TravelUiEvent>
    implements $TravelUiEventCopyWith<$Res> {
  _$TravelUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as VisitArea,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitAreaCopyWith<$Res> get area {
    return $VisitAreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoveAreaImplCopyWith<$Res>
    implements $TravelUiEventCopyWith<$Res> {
  factory _$$MoveAreaImplCopyWith(
          _$MoveAreaImpl value, $Res Function(_$MoveAreaImpl) then) =
      __$$MoveAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VisitArea area});

  @override
  $VisitAreaCopyWith<$Res> get area;
}

/// @nodoc
class __$$MoveAreaImplCopyWithImpl<$Res>
    extends _$TravelUiEventCopyWithImpl<$Res, _$MoveAreaImpl>
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
}

/// @nodoc

class _$MoveAreaImpl implements _MoveArea {
  const _$MoveAreaImpl(this.area);

  @override
  final VisitArea area;

  @override
  String toString() {
    return 'TravelUiEvent.moveArea(area: $area)';
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
  }) {
    return moveArea(area);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VisitArea area)? moveArea,
  }) {
    return moveArea?.call(area);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VisitArea area)? moveArea,
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
  }) {
    return moveArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveArea value)? moveArea,
  }) {
    return moveArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveArea value)? moveArea,
    required TResult orElse(),
  }) {
    if (moveArea != null) {
      return moveArea(this);
    }
    return orElse();
  }
}

abstract class _MoveArea implements TravelUiEvent {
  const factory _MoveArea(final VisitArea area) = _$MoveAreaImpl;

  @override
  VisitArea get area;
  @override
  @JsonKey(ignore: true)
  _$$MoveAreaImplCopyWith<_$MoveAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
