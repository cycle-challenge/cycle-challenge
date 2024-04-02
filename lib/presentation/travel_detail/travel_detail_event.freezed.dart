// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDetailEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeVisit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeVisitEvent value) changeVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeVisitEvent value)? changeVisit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeVisitEvent value)? changeVisit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDetailEventCopyWith<TravelDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailEventCopyWith<$Res> {
  factory $TravelDetailEventCopyWith(
          TravelDetailEvent value, $Res Function(TravelDetailEvent) then) =
      _$TravelDetailEventCopyWithImpl<$Res, TravelDetailEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$TravelDetailEventCopyWithImpl<$Res, $Val extends TravelDetailEvent>
    implements $TravelDetailEventCopyWith<$Res> {
  _$TravelDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeVisitEventImplCopyWith<$Res>
    implements $TravelDetailEventCopyWith<$Res> {
  factory _$$ChangeVisitEventImplCopyWith(_$ChangeVisitEventImpl value,
          $Res Function(_$ChangeVisitEventImpl) then) =
      __$$ChangeVisitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeVisitEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ChangeVisitEventImpl>
    implements _$$ChangeVisitEventImplCopyWith<$Res> {
  __$$ChangeVisitEventImplCopyWithImpl(_$ChangeVisitEventImpl _value,
      $Res Function(_$ChangeVisitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeVisitEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeVisitEventImpl implements ChangeVisitEvent {
  const _$ChangeVisitEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TravelDetailEvent.changeVisit(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeVisitEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVisitEventImplCopyWith<_$ChangeVisitEventImpl> get copyWith =>
      __$$ChangeVisitEventImplCopyWithImpl<_$ChangeVisitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeVisit,
  }) {
    return changeVisit(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeVisit,
  }) {
    return changeVisit?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeVisit,
    required TResult orElse(),
  }) {
    if (changeVisit != null) {
      return changeVisit(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeVisitEvent value) changeVisit,
  }) {
    return changeVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeVisitEvent value)? changeVisit,
  }) {
    return changeVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeVisitEvent value)? changeVisit,
    required TResult orElse(),
  }) {
    if (changeVisit != null) {
      return changeVisit(this);
    }
    return orElse();
  }
}

abstract class ChangeVisitEvent implements TravelDetailEvent {
  const factory ChangeVisitEvent(final int index) = _$ChangeVisitEventImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ChangeVisitEventImplCopyWith<_$ChangeVisitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
