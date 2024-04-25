// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookmarkStartEditEventImplCopyWith<$Res> {
  factory _$$BookmarkStartEditEventImplCopyWith(
          _$BookmarkStartEditEventImpl value,
          $Res Function(_$BookmarkStartEditEventImpl) then) =
      __$$BookmarkStartEditEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkStartEditEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkStartEditEventImpl>
    implements _$$BookmarkStartEditEventImplCopyWith<$Res> {
  __$$BookmarkStartEditEventImplCopyWithImpl(
      _$BookmarkStartEditEventImpl _value,
      $Res Function(_$BookmarkStartEditEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkStartEditEventImpl implements BookmarkStartEditEvent {
  const _$BookmarkStartEditEventImpl();

  @override
  String toString() {
    return 'BookmarkEvent.startEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkStartEditEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return startEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return startEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (startEdit != null) {
      return startEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return startEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return startEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (startEdit != null) {
      return startEdit(this);
    }
    return orElse();
  }
}

abstract class BookmarkStartEditEvent implements BookmarkEvent {
  const factory BookmarkStartEditEvent() = _$BookmarkStartEditEventImpl;
}

/// @nodoc
abstract class _$$BookmarkConfirmEditEventImplCopyWith<$Res> {
  factory _$$BookmarkConfirmEditEventImplCopyWith(
          _$BookmarkConfirmEditEventImpl value,
          $Res Function(_$BookmarkConfirmEditEventImpl) then) =
      __$$BookmarkConfirmEditEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkConfirmEditEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkConfirmEditEventImpl>
    implements _$$BookmarkConfirmEditEventImplCopyWith<$Res> {
  __$$BookmarkConfirmEditEventImplCopyWithImpl(
      _$BookmarkConfirmEditEventImpl _value,
      $Res Function(_$BookmarkConfirmEditEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkConfirmEditEventImpl implements BookmarkConfirmEditEvent {
  const _$BookmarkConfirmEditEventImpl();

  @override
  String toString() {
    return 'BookmarkEvent.endEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkConfirmEditEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return endEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return endEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (endEdit != null) {
      return endEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return endEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return endEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (endEdit != null) {
      return endEdit(this);
    }
    return orElse();
  }
}

abstract class BookmarkConfirmEditEvent implements BookmarkEvent {
  const factory BookmarkConfirmEditEvent() = _$BookmarkConfirmEditEventImpl;
}

/// @nodoc
abstract class _$$BookmarkDeletePlaceEventImplCopyWith<$Res> {
  factory _$$BookmarkDeletePlaceEventImplCopyWith(
          _$BookmarkDeletePlaceEventImpl value,
          $Res Function(_$BookmarkDeletePlaceEventImpl) then) =
      __$$BookmarkDeletePlaceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$BookmarkDeletePlaceEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkDeletePlaceEventImpl>
    implements _$$BookmarkDeletePlaceEventImplCopyWith<$Res> {
  __$$BookmarkDeletePlaceEventImplCopyWithImpl(
      _$BookmarkDeletePlaceEventImpl _value,
      $Res Function(_$BookmarkDeletePlaceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$BookmarkDeletePlaceEventImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$BookmarkDeletePlaceEventImpl implements BookmarkDeletePlaceEvent {
  const _$BookmarkDeletePlaceEventImpl(this.place);

  @override
  final PlaceModel place;

  @override
  String toString() {
    return 'BookmarkEvent.deletePlace(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkDeletePlaceEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkDeletePlaceEventImplCopyWith<_$BookmarkDeletePlaceEventImpl>
      get copyWith => __$$BookmarkDeletePlaceEventImplCopyWithImpl<
          _$BookmarkDeletePlaceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return deletePlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return deletePlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return deletePlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return deletePlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(this);
    }
    return orElse();
  }
}

abstract class BookmarkDeletePlaceEvent implements BookmarkEvent {
  const factory BookmarkDeletePlaceEvent(final PlaceModel place) =
      _$BookmarkDeletePlaceEventImpl;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$BookmarkDeletePlaceEventImplCopyWith<_$BookmarkDeletePlaceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkDeleteTravelEventImplCopyWith<$Res> {
  factory _$$BookmarkDeleteTravelEventImplCopyWith(
          _$BookmarkDeleteTravelEventImpl value,
          $Res Function(_$BookmarkDeleteTravelEventImpl) then) =
      __$$BookmarkDeleteTravelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TravelModel travel});
}

/// @nodoc
class __$$BookmarkDeleteTravelEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkDeleteTravelEventImpl>
    implements _$$BookmarkDeleteTravelEventImplCopyWith<$Res> {
  __$$BookmarkDeleteTravelEventImplCopyWithImpl(
      _$BookmarkDeleteTravelEventImpl _value,
      $Res Function(_$BookmarkDeleteTravelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
  }) {
    return _then(_$BookmarkDeleteTravelEventImpl(
      null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as TravelModel,
    ));
  }
}

/// @nodoc

class _$BookmarkDeleteTravelEventImpl implements BookmarkDeleteTravelEvent {
  const _$BookmarkDeleteTravelEventImpl(this.travel);

  @override
  final TravelModel travel;

  @override
  String toString() {
    return 'BookmarkEvent.deleteTravel(travel: $travel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkDeleteTravelEventImpl &&
            (identical(other.travel, travel) || other.travel == travel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkDeleteTravelEventImplCopyWith<_$BookmarkDeleteTravelEventImpl>
      get copyWith => __$$BookmarkDeleteTravelEventImplCopyWithImpl<
          _$BookmarkDeleteTravelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return deleteTravel(travel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return deleteTravel?.call(travel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (deleteTravel != null) {
      return deleteTravel(travel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return deleteTravel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return deleteTravel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (deleteTravel != null) {
      return deleteTravel(this);
    }
    return orElse();
  }
}

abstract class BookmarkDeleteTravelEvent implements BookmarkEvent {
  const factory BookmarkDeleteTravelEvent(final TravelModel travel) =
      _$BookmarkDeleteTravelEventImpl;

  TravelModel get travel;
  @JsonKey(ignore: true)
  _$$BookmarkDeleteTravelEventImplCopyWith<_$BookmarkDeleteTravelEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkAddPlaceEventImplCopyWith<$Res> {
  factory _$$BookmarkAddPlaceEventImplCopyWith(
          _$BookmarkAddPlaceEventImpl value,
          $Res Function(_$BookmarkAddPlaceEventImpl) then) =
      __$$BookmarkAddPlaceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$BookmarkAddPlaceEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkAddPlaceEventImpl>
    implements _$$BookmarkAddPlaceEventImplCopyWith<$Res> {
  __$$BookmarkAddPlaceEventImplCopyWithImpl(_$BookmarkAddPlaceEventImpl _value,
      $Res Function(_$BookmarkAddPlaceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$BookmarkAddPlaceEventImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$BookmarkAddPlaceEventImpl implements BookmarkAddPlaceEvent {
  const _$BookmarkAddPlaceEventImpl(this.place);

  @override
  final PlaceModel place;

  @override
  String toString() {
    return 'BookmarkEvent.addPlace(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkAddPlaceEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkAddPlaceEventImplCopyWith<_$BookmarkAddPlaceEventImpl>
      get copyWith => __$$BookmarkAddPlaceEventImplCopyWithImpl<
          _$BookmarkAddPlaceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return addPlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return addPlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return addPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return addPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(this);
    }
    return orElse();
  }
}

abstract class BookmarkAddPlaceEvent implements BookmarkEvent {
  const factory BookmarkAddPlaceEvent(final PlaceModel place) =
      _$BookmarkAddPlaceEventImpl;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$BookmarkAddPlaceEventImplCopyWith<_$BookmarkAddPlaceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookmarkAddTravelEventImplCopyWith<$Res> {
  factory _$$BookmarkAddTravelEventImplCopyWith(
          _$BookmarkAddTravelEventImpl value,
          $Res Function(_$BookmarkAddTravelEventImpl) then) =
      __$$BookmarkAddTravelEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TravelModel travel});
}

/// @nodoc
class __$$BookmarkAddTravelEventImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkAddTravelEventImpl>
    implements _$$BookmarkAddTravelEventImplCopyWith<$Res> {
  __$$BookmarkAddTravelEventImplCopyWithImpl(
      _$BookmarkAddTravelEventImpl _value,
      $Res Function(_$BookmarkAddTravelEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
  }) {
    return _then(_$BookmarkAddTravelEventImpl(
      null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as TravelModel,
    ));
  }
}

/// @nodoc

class _$BookmarkAddTravelEventImpl implements BookmarkAddTravelEvent {
  const _$BookmarkAddTravelEventImpl(this.travel);

  @override
  final TravelModel travel;

  @override
  String toString() {
    return 'BookmarkEvent.addTravel(travel: $travel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkAddTravelEventImpl &&
            (identical(other.travel, travel) || other.travel == travel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkAddTravelEventImplCopyWith<_$BookmarkAddTravelEventImpl>
      get copyWith => __$$BookmarkAddTravelEventImplCopyWithImpl<
          _$BookmarkAddTravelEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(TravelModel travel) deleteTravel,
    required TResult Function(PlaceModel place) addPlace,
    required TResult Function(TravelModel travel) addTravel,
  }) {
    return addTravel(travel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(TravelModel travel)? deleteTravel,
    TResult? Function(PlaceModel place)? addPlace,
    TResult? Function(TravelModel travel)? addTravel,
  }) {
    return addTravel?.call(travel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(TravelModel travel)? deleteTravel,
    TResult Function(PlaceModel place)? addPlace,
    TResult Function(TravelModel travel)? addTravel,
    required TResult orElse(),
  }) {
    if (addTravel != null) {
      return addTravel(travel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEditEvent value) startEdit,
    required TResult Function(BookmarkConfirmEditEvent value) endEdit,
    required TResult Function(BookmarkDeletePlaceEvent value) deletePlace,
    required TResult Function(BookmarkDeleteTravelEvent value) deleteTravel,
    required TResult Function(BookmarkAddPlaceEvent value) addPlace,
    required TResult Function(BookmarkAddTravelEvent value) addTravel,
  }) {
    return addTravel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEditEvent value)? startEdit,
    TResult? Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult? Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult? Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult? Function(BookmarkAddTravelEvent value)? addTravel,
  }) {
    return addTravel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEditEvent value)? startEdit,
    TResult Function(BookmarkConfirmEditEvent value)? endEdit,
    TResult Function(BookmarkDeletePlaceEvent value)? deletePlace,
    TResult Function(BookmarkDeleteTravelEvent value)? deleteTravel,
    TResult Function(BookmarkAddPlaceEvent value)? addPlace,
    TResult Function(BookmarkAddTravelEvent value)? addTravel,
    required TResult orElse(),
  }) {
    if (addTravel != null) {
      return addTravel(this);
    }
    return orElse();
  }
}

abstract class BookmarkAddTravelEvent implements BookmarkEvent {
  const factory BookmarkAddTravelEvent(final TravelModel travel) =
      _$BookmarkAddTravelEventImpl;

  TravelModel get travel;
  @JsonKey(ignore: true)
  _$$BookmarkAddTravelEventImplCopyWith<_$BookmarkAddTravelEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
