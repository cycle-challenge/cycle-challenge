// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_create_add_visit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelCreateAddVisitEvent {
  Place get place => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) select,
    required TResult Function(Place place) unselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCreateAddVisitEventCopyWith<TravelCreateAddVisitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateAddVisitEventCopyWith<$Res> {
  factory $TravelCreateAddVisitEventCopyWith(TravelCreateAddVisitEvent value,
          $Res Function(TravelCreateAddVisitEvent) then) =
      _$TravelCreateAddVisitEventCopyWithImpl<$Res, TravelCreateAddVisitEvent>;
  @useResult
  $Res call({Place place});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$TravelCreateAddVisitEventCopyWithImpl<$Res,
        $Val extends TravelCreateAddVisitEvent>
    implements $TravelCreateAddVisitEventCopyWith<$Res> {
  _$TravelCreateAddVisitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res>
    implements $TravelCreateAddVisitEventCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Place place});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$TravelCreateAddVisitEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$SelectImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'TravelCreateAddVisitEvent.select(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) select,
    required TResult Function(Place place) unselect,
  }) {
    return select(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
  }) {
    return select?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements TravelCreateAddVisitEvent {
  const factory _Select(final Place place) = _$SelectImpl;

  @override
  Place get place;
  @override
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnselectImplCopyWith<$Res>
    implements $TravelCreateAddVisitEventCopyWith<$Res> {
  factory _$$UnselectImplCopyWith(
          _$UnselectImpl value, $Res Function(_$UnselectImpl) then) =
      __$$UnselectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Place place});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$UnselectImplCopyWithImpl<$Res>
    extends _$TravelCreateAddVisitEventCopyWithImpl<$Res, _$UnselectImpl>
    implements _$$UnselectImplCopyWith<$Res> {
  __$$UnselectImplCopyWithImpl(
      _$UnselectImpl _value, $Res Function(_$UnselectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$UnselectImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$UnselectImpl implements _Unselect {
  const _$UnselectImpl(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'TravelCreateAddVisitEvent.unselect(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnselectImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnselectImplCopyWith<_$UnselectImpl> get copyWith =>
      __$$UnselectImplCopyWithImpl<_$UnselectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) select,
    required TResult Function(Place place) unselect,
  }) {
    return unselect(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
  }) {
    return unselect?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
  }) {
    return unselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
  }) {
    return unselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(this);
    }
    return orElse();
  }
}

abstract class _Unselect implements TravelCreateAddVisitEvent {
  const factory _Unselect(final Place place) = _$UnselectImpl;

  @override
  Place get place;
  @override
  @JsonKey(ignore: true)
  _$$UnselectImplCopyWith<_$UnselectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
