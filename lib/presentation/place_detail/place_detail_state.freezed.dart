// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceDetailState {
  bool get isBusinessHourExpanded => throw _privateConstructorUsedError;
  int get imageIndex => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  List<PlaceReview> get reviews => throw _privateConstructorUsedError;
  List<Travel> get travels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailStateCopyWith<PlaceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailStateCopyWith<$Res> {
  factory $PlaceDetailStateCopyWith(
          PlaceDetailState value, $Res Function(PlaceDetailState) then) =
      _$PlaceDetailStateCopyWithImpl<$Res, PlaceDetailState>;
  @useResult
  $Res call(
      {bool isBusinessHourExpanded,
      int imageIndex,
      List<Image> images,
      List<PlaceReview> reviews,
      List<Travel> travels});
}

/// @nodoc
class _$PlaceDetailStateCopyWithImpl<$Res, $Val extends PlaceDetailState>
    implements $PlaceDetailStateCopyWith<$Res> {
  _$PlaceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusinessHourExpanded = null,
    Object? imageIndex = null,
    Object? images = null,
    Object? reviews = null,
    Object? travels = null,
  }) {
    return _then(_value.copyWith(
      isBusinessHourExpanded: null == isBusinessHourExpanded
          ? _value.isBusinessHourExpanded
          : isBusinessHourExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>,
      travels: null == travels
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailStateImplCopyWith<$Res>
    implements $PlaceDetailStateCopyWith<$Res> {
  factory _$$PlaceDetailStateImplCopyWith(_$PlaceDetailStateImpl value,
          $Res Function(_$PlaceDetailStateImpl) then) =
      __$$PlaceDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isBusinessHourExpanded,
      int imageIndex,
      List<Image> images,
      List<PlaceReview> reviews,
      List<Travel> travels});
}

/// @nodoc
class __$$PlaceDetailStateImplCopyWithImpl<$Res>
    extends _$PlaceDetailStateCopyWithImpl<$Res, _$PlaceDetailStateImpl>
    implements _$$PlaceDetailStateImplCopyWith<$Res> {
  __$$PlaceDetailStateImplCopyWithImpl(_$PlaceDetailStateImpl _value,
      $Res Function(_$PlaceDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusinessHourExpanded = null,
    Object? imageIndex = null,
    Object? images = null,
    Object? reviews = null,
    Object? travels = null,
  }) {
    return _then(_$PlaceDetailStateImpl(
      isBusinessHourExpanded: null == isBusinessHourExpanded
          ? _value.isBusinessHourExpanded
          : isBusinessHourExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>,
      travels: null == travels
          ? _value._travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
    ));
  }
}

/// @nodoc

class _$PlaceDetailStateImpl implements _PlaceDetailState {
  _$PlaceDetailStateImpl(
      {this.isBusinessHourExpanded = false,
      this.imageIndex = 0,
      final List<Image> images = const [],
      final List<PlaceReview> reviews = const [],
      final List<Travel> travels = const []})
      : _images = images,
        _reviews = reviews,
        _travels = travels;

  @override
  @JsonKey()
  final bool isBusinessHourExpanded;
  @override
  @JsonKey()
  final int imageIndex;
  final List<Image> _images;
  @override
  @JsonKey()
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<PlaceReview> _reviews;
  @override
  @JsonKey()
  List<PlaceReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  final List<Travel> _travels;
  @override
  @JsonKey()
  List<Travel> get travels {
    if (_travels is EqualUnmodifiableListView) return _travels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_travels);
  }

  @override
  String toString() {
    return 'PlaceDetailState(isBusinessHourExpanded: $isBusinessHourExpanded, imageIndex: $imageIndex, images: $images, reviews: $reviews, travels: $travels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailStateImpl &&
            (identical(other.isBusinessHourExpanded, isBusinessHourExpanded) ||
                other.isBusinessHourExpanded == isBusinessHourExpanded) &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            const DeepCollectionEquality().equals(other._travels, _travels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isBusinessHourExpanded,
      imageIndex,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_reviews),
      const DeepCollectionEquality().hash(_travels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailStateImplCopyWith<_$PlaceDetailStateImpl> get copyWith =>
      __$$PlaceDetailStateImplCopyWithImpl<_$PlaceDetailStateImpl>(
          this, _$identity);
}

abstract class _PlaceDetailState implements PlaceDetailState {
  factory _PlaceDetailState(
      {final bool isBusinessHourExpanded,
      final int imageIndex,
      final List<Image> images,
      final List<PlaceReview> reviews,
      final List<Travel> travels}) = _$PlaceDetailStateImpl;

  @override
  bool get isBusinessHourExpanded;
  @override
  int get imageIndex;
  @override
  List<Image> get images;
  @override
  List<PlaceReview> get reviews;
  @override
  List<Travel> get travels;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailStateImplCopyWith<_$PlaceDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
