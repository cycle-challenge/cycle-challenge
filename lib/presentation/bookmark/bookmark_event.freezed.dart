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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookmarkStartEdit value) startEdit,
    required TResult Function(BookmarkConfirmEdit value) endEdit,
    required TResult Function(BookmarkDeletePlaceEdit value) deletePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEdit value)? startEdit,
    TResult? Function(BookmarkConfirmEdit value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEdit value)? deletePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEdit value)? startEdit,
    TResult Function(BookmarkConfirmEdit value)? endEdit,
    TResult Function(BookmarkDeletePlaceEdit value)? deletePlace,
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
abstract class _$$BookmarkStartEditImplCopyWith<$Res> {
  factory _$$BookmarkStartEditImplCopyWith(_$BookmarkStartEditImpl value,
          $Res Function(_$BookmarkStartEditImpl) then) =
      __$$BookmarkStartEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkStartEditImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkStartEditImpl>
    implements _$$BookmarkStartEditImplCopyWith<$Res> {
  __$$BookmarkStartEditImplCopyWithImpl(_$BookmarkStartEditImpl _value,
      $Res Function(_$BookmarkStartEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkStartEditImpl implements BookmarkStartEdit {
  const _$BookmarkStartEditImpl();

  @override
  String toString() {
    return 'BookmarkEvent.startEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookmarkStartEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
  }) {
    return startEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
  }) {
    return startEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
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
    required TResult Function(BookmarkStartEdit value) startEdit,
    required TResult Function(BookmarkConfirmEdit value) endEdit,
    required TResult Function(BookmarkDeletePlaceEdit value) deletePlace,
  }) {
    return startEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEdit value)? startEdit,
    TResult? Function(BookmarkConfirmEdit value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEdit value)? deletePlace,
  }) {
    return startEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEdit value)? startEdit,
    TResult Function(BookmarkConfirmEdit value)? endEdit,
    TResult Function(BookmarkDeletePlaceEdit value)? deletePlace,
    required TResult orElse(),
  }) {
    if (startEdit != null) {
      return startEdit(this);
    }
    return orElse();
  }
}

abstract class BookmarkStartEdit implements BookmarkEvent {
  const factory BookmarkStartEdit() = _$BookmarkStartEditImpl;
}

/// @nodoc
abstract class _$$BookmarkConfirmEditImplCopyWith<$Res> {
  factory _$$BookmarkConfirmEditImplCopyWith(_$BookmarkConfirmEditImpl value,
          $Res Function(_$BookmarkConfirmEditImpl) then) =
      __$$BookmarkConfirmEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookmarkConfirmEditImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkConfirmEditImpl>
    implements _$$BookmarkConfirmEditImplCopyWith<$Res> {
  __$$BookmarkConfirmEditImplCopyWithImpl(_$BookmarkConfirmEditImpl _value,
      $Res Function(_$BookmarkConfirmEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookmarkConfirmEditImpl implements BookmarkConfirmEdit {
  const _$BookmarkConfirmEditImpl();

  @override
  String toString() {
    return 'BookmarkEvent.endEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkConfirmEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
  }) {
    return endEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
  }) {
    return endEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
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
    required TResult Function(BookmarkStartEdit value) startEdit,
    required TResult Function(BookmarkConfirmEdit value) endEdit,
    required TResult Function(BookmarkDeletePlaceEdit value) deletePlace,
  }) {
    return endEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEdit value)? startEdit,
    TResult? Function(BookmarkConfirmEdit value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEdit value)? deletePlace,
  }) {
    return endEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEdit value)? startEdit,
    TResult Function(BookmarkConfirmEdit value)? endEdit,
    TResult Function(BookmarkDeletePlaceEdit value)? deletePlace,
    required TResult orElse(),
  }) {
    if (endEdit != null) {
      return endEdit(this);
    }
    return orElse();
  }
}

abstract class BookmarkConfirmEdit implements BookmarkEvent {
  const factory BookmarkConfirmEdit() = _$BookmarkConfirmEditImpl;
}

/// @nodoc
abstract class _$$BookmarkDeletePlaceEditImplCopyWith<$Res> {
  factory _$$BookmarkDeletePlaceEditImplCopyWith(
          _$BookmarkDeletePlaceEditImpl value,
          $Res Function(_$BookmarkDeletePlaceEditImpl) then) =
      __$$BookmarkDeletePlaceEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$BookmarkDeletePlaceEditImplCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$BookmarkDeletePlaceEditImpl>
    implements _$$BookmarkDeletePlaceEditImplCopyWith<$Res> {
  __$$BookmarkDeletePlaceEditImplCopyWithImpl(
      _$BookmarkDeletePlaceEditImpl _value,
      $Res Function(_$BookmarkDeletePlaceEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$BookmarkDeletePlaceEditImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$BookmarkDeletePlaceEditImpl implements BookmarkDeletePlaceEdit {
  const _$BookmarkDeletePlaceEditImpl(this.place);

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
            other is _$BookmarkDeletePlaceEditImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkDeletePlaceEditImplCopyWith<_$BookmarkDeletePlaceEditImpl>
      get copyWith => __$$BookmarkDeletePlaceEditImplCopyWithImpl<
          _$BookmarkDeletePlaceEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startEdit,
    required TResult Function() endEdit,
    required TResult Function(PlaceModel place) deletePlace,
  }) {
    return deletePlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startEdit,
    TResult? Function()? endEdit,
    TResult? Function(PlaceModel place)? deletePlace,
  }) {
    return deletePlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startEdit,
    TResult Function()? endEdit,
    TResult Function(PlaceModel place)? deletePlace,
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
    required TResult Function(BookmarkStartEdit value) startEdit,
    required TResult Function(BookmarkConfirmEdit value) endEdit,
    required TResult Function(BookmarkDeletePlaceEdit value) deletePlace,
  }) {
    return deletePlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookmarkStartEdit value)? startEdit,
    TResult? Function(BookmarkConfirmEdit value)? endEdit,
    TResult? Function(BookmarkDeletePlaceEdit value)? deletePlace,
  }) {
    return deletePlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookmarkStartEdit value)? startEdit,
    TResult Function(BookmarkConfirmEdit value)? endEdit,
    TResult Function(BookmarkDeletePlaceEdit value)? deletePlace,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(this);
    }
    return orElse();
  }
}

abstract class BookmarkDeletePlaceEdit implements BookmarkEvent {
  const factory BookmarkDeletePlaceEdit(final PlaceModel place) =
      _$BookmarkDeletePlaceEditImpl;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$BookmarkDeletePlaceEditImplCopyWith<_$BookmarkDeletePlaceEditImpl>
      get copyWith => throw _privateConstructorUsedError;
}
