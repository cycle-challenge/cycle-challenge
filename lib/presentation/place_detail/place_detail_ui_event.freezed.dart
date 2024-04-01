// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceDetailUIEvent {
  List<ImageModel> get images => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageModel> images, int nextPageNumber)
        addImages,
    required TResult Function(List<ImageModel> images) addLastImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult? Function(List<ImageModel> images)? addLastImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult Function(List<ImageModel> images)? addLastImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlaceImageUIEvent value) addImages,
    required TResult Function(AddPlaceLastImageUIEvent value) addLastImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPlaceImageUIEvent value)? addImages,
    TResult? Function(AddPlaceLastImageUIEvent value)? addLastImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlaceImageUIEvent value)? addImages,
    TResult Function(AddPlaceLastImageUIEvent value)? addLastImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailUIEventCopyWith<PlaceDetailUIEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailUIEventCopyWith<$Res> {
  factory $PlaceDetailUIEventCopyWith(
          PlaceDetailUIEvent value, $Res Function(PlaceDetailUIEvent) then) =
      _$PlaceDetailUIEventCopyWithImpl<$Res, PlaceDetailUIEvent>;
  @useResult
  $Res call({List<ImageModel> images});
}

/// @nodoc
class _$PlaceDetailUIEventCopyWithImpl<$Res, $Val extends PlaceDetailUIEvent>
    implements $PlaceDetailUIEventCopyWith<$Res> {
  _$PlaceDetailUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPlaceImageUIEventImplCopyWith<$Res>
    implements $PlaceDetailUIEventCopyWith<$Res> {
  factory _$$AddPlaceImageUIEventImplCopyWith(_$AddPlaceImageUIEventImpl value,
          $Res Function(_$AddPlaceImageUIEventImpl) then) =
      __$$AddPlaceImageUIEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageModel> images, int nextPageNumber});
}

/// @nodoc
class __$$AddPlaceImageUIEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailUIEventCopyWithImpl<$Res, _$AddPlaceImageUIEventImpl>
    implements _$$AddPlaceImageUIEventImplCopyWith<$Res> {
  __$$AddPlaceImageUIEventImplCopyWithImpl(_$AddPlaceImageUIEventImpl _value,
      $Res Function(_$AddPlaceImageUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? nextPageNumber = null,
  }) {
    return _then(_$AddPlaceImageUIEventImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      null == nextPageNumber
          ? _value.nextPageNumber
          : nextPageNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddPlaceImageUIEventImpl implements AddPlaceImageUIEvent {
  const _$AddPlaceImageUIEventImpl(
      final List<ImageModel> images, this.nextPageNumber)
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int nextPageNumber;

  @override
  String toString() {
    return 'PlaceDetailUIEvent.addImages(images: $images, nextPageNumber: $nextPageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaceImageUIEventImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.nextPageNumber, nextPageNumber) ||
                other.nextPageNumber == nextPageNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), nextPageNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaceImageUIEventImplCopyWith<_$AddPlaceImageUIEventImpl>
      get copyWith =>
          __$$AddPlaceImageUIEventImplCopyWithImpl<_$AddPlaceImageUIEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageModel> images, int nextPageNumber)
        addImages,
    required TResult Function(List<ImageModel> images) addLastImages,
  }) {
    return addImages(images, nextPageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult? Function(List<ImageModel> images)? addLastImages,
  }) {
    return addImages?.call(images, nextPageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult Function(List<ImageModel> images)? addLastImages,
    required TResult orElse(),
  }) {
    if (addImages != null) {
      return addImages(images, nextPageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlaceImageUIEvent value) addImages,
    required TResult Function(AddPlaceLastImageUIEvent value) addLastImages,
  }) {
    return addImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPlaceImageUIEvent value)? addImages,
    TResult? Function(AddPlaceLastImageUIEvent value)? addLastImages,
  }) {
    return addImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlaceImageUIEvent value)? addImages,
    TResult Function(AddPlaceLastImageUIEvent value)? addLastImages,
    required TResult orElse(),
  }) {
    if (addImages != null) {
      return addImages(this);
    }
    return orElse();
  }
}

abstract class AddPlaceImageUIEvent implements PlaceDetailUIEvent {
  const factory AddPlaceImageUIEvent(
          final List<ImageModel> images, final int nextPageNumber) =
      _$AddPlaceImageUIEventImpl;

  @override
  List<ImageModel> get images;
  int get nextPageNumber;
  @override
  @JsonKey(ignore: true)
  _$$AddPlaceImageUIEventImplCopyWith<_$AddPlaceImageUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPlaceLastImageUIEventImplCopyWith<$Res>
    implements $PlaceDetailUIEventCopyWith<$Res> {
  factory _$$AddPlaceLastImageUIEventImplCopyWith(
          _$AddPlaceLastImageUIEventImpl value,
          $Res Function(_$AddPlaceLastImageUIEventImpl) then) =
      __$$AddPlaceLastImageUIEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageModel> images});
}

/// @nodoc
class __$$AddPlaceLastImageUIEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailUIEventCopyWithImpl<$Res,
        _$AddPlaceLastImageUIEventImpl>
    implements _$$AddPlaceLastImageUIEventImplCopyWith<$Res> {
  __$$AddPlaceLastImageUIEventImplCopyWithImpl(
      _$AddPlaceLastImageUIEventImpl _value,
      $Res Function(_$AddPlaceLastImageUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$AddPlaceLastImageUIEventImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$AddPlaceLastImageUIEventImpl implements AddPlaceLastImageUIEvent {
  const _$AddPlaceLastImageUIEventImpl(final List<ImageModel> images)
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PlaceDetailUIEvent.addLastImages(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaceLastImageUIEventImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaceLastImageUIEventImplCopyWith<_$AddPlaceLastImageUIEventImpl>
      get copyWith => __$$AddPlaceLastImageUIEventImplCopyWithImpl<
          _$AddPlaceLastImageUIEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ImageModel> images, int nextPageNumber)
        addImages,
    required TResult Function(List<ImageModel> images) addLastImages,
  }) {
    return addLastImages(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult? Function(List<ImageModel> images)? addLastImages,
  }) {
    return addLastImages?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ImageModel> images, int nextPageNumber)? addImages,
    TResult Function(List<ImageModel> images)? addLastImages,
    required TResult orElse(),
  }) {
    if (addLastImages != null) {
      return addLastImages(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPlaceImageUIEvent value) addImages,
    required TResult Function(AddPlaceLastImageUIEvent value) addLastImages,
  }) {
    return addLastImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPlaceImageUIEvent value)? addImages,
    TResult? Function(AddPlaceLastImageUIEvent value)? addLastImages,
  }) {
    return addLastImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPlaceImageUIEvent value)? addImages,
    TResult Function(AddPlaceLastImageUIEvent value)? addLastImages,
    required TResult orElse(),
  }) {
    if (addLastImages != null) {
      return addLastImages(this);
    }
    return orElse();
  }
}

abstract class AddPlaceLastImageUIEvent implements PlaceDetailUIEvent {
  const factory AddPlaceLastImageUIEvent(final List<ImageModel> images) =
      _$AddPlaceLastImageUIEventImpl;

  @override
  List<ImageModel> get images;
  @override
  @JsonKey(ignore: true)
  _$$AddPlaceLastImageUIEventImplCopyWith<_$AddPlaceLastImageUIEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
