// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_add_visit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelAddVisitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) select,
    required TResult Function(Place place) unselect,
    required TResult Function(PlaceFilter filter) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
    TResult? Function(PlaceFilter filter)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    TResult Function(PlaceFilter filter)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateAddVisitEventCopyWith<$Res> {
  factory $TravelCreateAddVisitEventCopyWith(TravelAddVisitEvent value,
          $Res Function(TravelAddVisitEvent) then) =
      _$TravelCreateAddVisitEventCopyWithImpl<$Res, TravelAddVisitEvent>;
}

/// @nodoc
class _$TravelCreateAddVisitEventCopyWithImpl<$Res,
        $Val extends TravelAddVisitEvent>
    implements $TravelCreateAddVisitEventCopyWith<$Res> {
  _$TravelCreateAddVisitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});

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

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value));
    });
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
    required TResult Function(PlaceFilter filter) updateFilter,
  }) {
    return select(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
    TResult? Function(PlaceFilter filter)? updateFilter,
  }) {
    return select?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    TResult Function(PlaceFilter filter)? updateFilter,
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
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements TravelAddVisitEvent {
  const factory _Select(final Place place) = _$SelectImpl;

  Place get place;
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnselectImplCopyWith<$Res> {
  factory _$$UnselectImplCopyWith(
          _$UnselectImpl value, $Res Function(_$UnselectImpl) then) =
      __$$UnselectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});

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

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value));
    });
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
    required TResult Function(PlaceFilter filter) updateFilter,
  }) {
    return unselect(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
    TResult? Function(PlaceFilter filter)? updateFilter,
  }) {
    return unselect?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    TResult Function(PlaceFilter filter)? updateFilter,
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
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return unselect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return unselect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (unselect != null) {
      return unselect(this);
    }
    return orElse();
  }
}

abstract class _Unselect implements TravelAddVisitEvent {
  const factory _Unselect(final Place place) = _$UnselectImpl;

  Place get place;
  @JsonKey(ignore: true)
  _$$UnselectImplCopyWith<_$UnselectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFilterImplCopyWith<$Res> {
  factory _$$UpdateFilterImplCopyWith(
          _$UpdateFilterImpl value, $Res Function(_$UpdateFilterImpl) then) =
      __$$UpdateFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceFilter filter});
}

/// @nodoc
class __$$UpdateFilterImplCopyWithImpl<$Res>
    extends _$TravelCreateAddVisitEventCopyWithImpl<$Res, _$UpdateFilterImpl>
    implements _$$UpdateFilterImplCopyWith<$Res> {
  __$$UpdateFilterImplCopyWithImpl(
      _$UpdateFilterImpl _value, $Res Function(_$UpdateFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$UpdateFilterImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as PlaceFilter,
    ));
  }
}

/// @nodoc

class _$UpdateFilterImpl implements _UpdateFilter {
  const _$UpdateFilterImpl(this.filter);

  @override
  final PlaceFilter filter;

  @override
  String toString() {
    return 'TravelCreateAddVisitEvent.updateFilter(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFilterImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFilterImplCopyWith<_$UpdateFilterImpl> get copyWith =>
      __$$UpdateFilterImplCopyWithImpl<_$UpdateFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) select,
    required TResult Function(Place place) unselect,
    required TResult Function(PlaceFilter filter) updateFilter,
  }) {
    return updateFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? select,
    TResult? Function(Place place)? unselect,
    TResult? Function(PlaceFilter filter)? updateFilter,
  }) {
    return updateFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? select,
    TResult Function(Place place)? unselect,
    TResult Function(PlaceFilter filter)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Unselect value) unselect,
    required TResult Function(_UpdateFilter value) updateFilter,
  }) {
    return updateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Unselect value)? unselect,
    TResult? Function(_UpdateFilter value)? updateFilter,
  }) {
    return updateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Unselect value)? unselect,
    TResult Function(_UpdateFilter value)? updateFilter,
    required TResult orElse(),
  }) {
    if (updateFilter != null) {
      return updateFilter(this);
    }
    return orElse();
  }
}

abstract class _UpdateFilter implements TravelAddVisitEvent {
  const factory _UpdateFilter(final PlaceFilter filter) = _$UpdateFilterImpl;

  PlaceFilter get filter;
  @JsonKey(ignore: true)
  _$$UpdateFilterImplCopyWith<_$UpdateFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
