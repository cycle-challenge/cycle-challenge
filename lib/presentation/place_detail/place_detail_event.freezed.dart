// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String googlePlaceID) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String googlePlaceID)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String googlePlaceID)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailEventCopyWith<$Res> {
  factory $PlaceDetailEventCopyWith(
          PlaceDetailEvent value, $Res Function(PlaceDetailEvent) then) =
      _$PlaceDetailEventCopyWithImpl<$Res, PlaceDetailEvent>;
}

/// @nodoc
class _$PlaceDetailEventCopyWithImpl<$Res, $Val extends PlaceDetailEvent>
    implements $PlaceDetailEventCopyWith<$Res> {
  _$PlaceDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPlaceDetailEventImplCopyWith<$Res> {
  factory _$$LoadPlaceDetailEventImplCopyWith(_$LoadPlaceDetailEventImpl value,
          $Res Function(_$LoadPlaceDetailEventImpl) then) =
      __$$LoadPlaceDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String googlePlaceID});
}

/// @nodoc
class __$$LoadPlaceDetailEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$LoadPlaceDetailEventImpl>
    implements _$$LoadPlaceDetailEventImplCopyWith<$Res> {
  __$$LoadPlaceDetailEventImplCopyWithImpl(_$LoadPlaceDetailEventImpl _value,
      $Res Function(_$LoadPlaceDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googlePlaceID = null,
  }) {
    return _then(_$LoadPlaceDetailEventImpl(
      null == googlePlaceID
          ? _value.googlePlaceID
          : googlePlaceID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadPlaceDetailEventImpl implements LoadPlaceDetailEvent {
  const _$LoadPlaceDetailEventImpl(this.googlePlaceID);

  @override
  final String googlePlaceID;

  @override
  String toString() {
    return 'PlaceDetailEvent.load(googlePlaceID: $googlePlaceID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPlaceDetailEventImpl &&
            (identical(other.googlePlaceID, googlePlaceID) ||
                other.googlePlaceID == googlePlaceID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googlePlaceID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPlaceDetailEventImplCopyWith<_$LoadPlaceDetailEventImpl>
      get copyWith =>
          __$$LoadPlaceDetailEventImplCopyWithImpl<_$LoadPlaceDetailEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String googlePlaceID) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
  }) {
    return load(googlePlaceID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String googlePlaceID)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
  }) {
    return load?.call(googlePlaceID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String googlePlaceID)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(googlePlaceID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadPlaceDetailEvent implements PlaceDetailEvent {
  const factory LoadPlaceDetailEvent(final String googlePlaceID) =
      _$LoadPlaceDetailEventImpl;

  String get googlePlaceID;
  @JsonKey(ignore: true)
  _$$LoadPlaceDetailEventImplCopyWith<_$LoadPlaceDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleBusinessHourExpandedEventImplCopyWith<$Res> {
  factory _$$ToggleBusinessHourExpandedEventImplCopyWith(
          _$ToggleBusinessHourExpandedEventImpl value,
          $Res Function(_$ToggleBusinessHourExpandedEventImpl) then) =
      __$$ToggleBusinessHourExpandedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleBusinessHourExpandedEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res,
        _$ToggleBusinessHourExpandedEventImpl>
    implements _$$ToggleBusinessHourExpandedEventImplCopyWith<$Res> {
  __$$ToggleBusinessHourExpandedEventImplCopyWithImpl(
      _$ToggleBusinessHourExpandedEventImpl _value,
      $Res Function(_$ToggleBusinessHourExpandedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleBusinessHourExpandedEventImpl
    implements ToggleBusinessHourExpandedEvent {
  const _$ToggleBusinessHourExpandedEventImpl();

  @override
  String toString() {
    return 'PlaceDetailEvent.toggleBusinessHourExpanded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBusinessHourExpandedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String googlePlaceID) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
  }) {
    return toggleBusinessHourExpanded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String googlePlaceID)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
  }) {
    return toggleBusinessHourExpanded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String googlePlaceID)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    required TResult orElse(),
  }) {
    if (toggleBusinessHourExpanded != null) {
      return toggleBusinessHourExpanded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
  }) {
    return toggleBusinessHourExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
  }) {
    return toggleBusinessHourExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    required TResult orElse(),
  }) {
    if (toggleBusinessHourExpanded != null) {
      return toggleBusinessHourExpanded(this);
    }
    return orElse();
  }
}

abstract class ToggleBusinessHourExpandedEvent implements PlaceDetailEvent {
  const factory ToggleBusinessHourExpandedEvent() =
      _$ToggleBusinessHourExpandedEventImpl;
}

/// @nodoc
abstract class _$$FetchPlaceImageEventImplCopyWith<$Res> {
  factory _$$FetchPlaceImageEventImplCopyWith(_$FetchPlaceImageEventImpl value,
          $Res Function(_$FetchPlaceImageEventImpl) then) =
      __$$FetchPlaceImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int placeID, int page, int pageSize});
}

/// @nodoc
class __$$FetchPlaceImageEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$FetchPlaceImageEventImpl>
    implements _$$FetchPlaceImageEventImplCopyWith<$Res> {
  __$$FetchPlaceImageEventImplCopyWithImpl(_$FetchPlaceImageEventImpl _value,
      $Res Function(_$FetchPlaceImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeID = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$FetchPlaceImageEventImpl(
      null == placeID
          ? _value.placeID
          : placeID // ignore: cast_nullable_to_non_nullable
              as int,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchPlaceImageEventImpl implements FetchPlaceImageEvent {
  const _$FetchPlaceImageEventImpl(this.placeID, this.page, this.pageSize);

  @override
  final int placeID;
  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PlaceDetailEvent.fetchImage(placeID: $placeID, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPlaceImageEventImpl &&
            (identical(other.placeID, placeID) || other.placeID == placeID) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeID, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPlaceImageEventImplCopyWith<_$FetchPlaceImageEventImpl>
      get copyWith =>
          __$$FetchPlaceImageEventImplCopyWithImpl<_$FetchPlaceImageEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String googlePlaceID) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
  }) {
    return fetchImage(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String googlePlaceID)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
  }) {
    return fetchImage?.call(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String googlePlaceID)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    required TResult orElse(),
  }) {
    if (fetchImage != null) {
      return fetchImage(placeID, page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
  }) {
    return fetchImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
  }) {
    return fetchImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    required TResult orElse(),
  }) {
    if (fetchImage != null) {
      return fetchImage(this);
    }
    return orElse();
  }
}

abstract class FetchPlaceImageEvent implements PlaceDetailEvent {
  const factory FetchPlaceImageEvent(
          final int placeID, final int page, final int pageSize) =
      _$FetchPlaceImageEventImpl;

  int get placeID;
  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$FetchPlaceImageEventImplCopyWith<_$FetchPlaceImageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
