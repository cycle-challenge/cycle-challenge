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
  List<ImageModel> get placeImages => throw _privateConstructorUsedError;
  List<PlaceReview> get reviews => throw _privateConstructorUsedError;

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
      List<ImageModel> placeImages,
      List<PlaceReview> reviews});
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
    Object? placeImages = null,
    Object? reviews = null,
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
      placeImages: null == placeImages
          ? _value.placeImages
          : placeImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>,
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
      List<ImageModel> placeImages,
      List<PlaceReview> reviews});
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
    Object? placeImages = null,
    Object? reviews = null,
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
      placeImages: null == placeImages
          ? _value._placeImages
          : placeImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<PlaceReview>,
    ));
  }
}

/// @nodoc

class _$PlaceDetailStateImpl implements _PlaceDetailState {
  _$PlaceDetailStateImpl(
      {this.isBusinessHourExpanded = false,
      this.imageIndex = 0,
      final List<ImageModel> placeImages = const [],
      final List<PlaceReview> reviews = const []})
      : _placeImages = placeImages,
        _reviews = reviews;

  @override
  @JsonKey()
  final bool isBusinessHourExpanded;
  @override
  @JsonKey()
  final int imageIndex;
  final List<ImageModel> _placeImages;
  @override
  @JsonKey()
  List<ImageModel> get placeImages {
    if (_placeImages is EqualUnmodifiableListView) return _placeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeImages);
  }

  final List<PlaceReview> _reviews;
  @override
  @JsonKey()
  List<PlaceReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'PlaceDetailState(isBusinessHourExpanded: $isBusinessHourExpanded, imageIndex: $imageIndex, placeImages: $placeImages, reviews: $reviews)';
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
            const DeepCollectionEquality()
                .equals(other._placeImages, _placeImages) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isBusinessHourExpanded,
      imageIndex,
      const DeepCollectionEquality().hash(_placeImages),
      const DeepCollectionEquality().hash(_reviews));

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
      final List<ImageModel> placeImages,
      final List<PlaceReview> reviews}) = _$PlaceDetailStateImpl;

  @override
  bool get isBusinessHourExpanded;
  @override
  int get imageIndex;
  @override
  List<ImageModel> get placeImages;
  @override
  List<PlaceReview> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailStateImplCopyWith<_$PlaceDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
