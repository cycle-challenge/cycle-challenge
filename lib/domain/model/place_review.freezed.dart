// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) {
  return _PlaceReview.fromJson(json);
}

/// @nodoc
mixin _$PlaceReview {
  double get rating => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DateTime.parse)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceReviewCopyWith<PlaceReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceReviewCopyWith<$Res> {
  factory $PlaceReviewCopyWith(
          PlaceReview value, $Res Function(PlaceReview) then) =
      _$PlaceReviewCopyWithImpl<$Res, PlaceReview>;
  @useResult
  $Res call(
      {double rating,
      String nickname,
      @JsonKey(fromJson: DateTime.parse) DateTime createdAt,
      String? comment});
}

/// @nodoc
class _$PlaceReviewCopyWithImpl<$Res, $Val extends PlaceReview>
    implements $PlaceReviewCopyWith<$Res> {
  _$PlaceReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? nickname = null,
    Object? createdAt = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceReviewImplCopyWith<$Res>
    implements $PlaceReviewCopyWith<$Res> {
  factory _$$PlaceReviewImplCopyWith(
          _$PlaceReviewImpl value, $Res Function(_$PlaceReviewImpl) then) =
      __$$PlaceReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double rating,
      String nickname,
      @JsonKey(fromJson: DateTime.parse) DateTime createdAt,
      String? comment});
}

/// @nodoc
class __$$PlaceReviewImplCopyWithImpl<$Res>
    extends _$PlaceReviewCopyWithImpl<$Res, _$PlaceReviewImpl>
    implements _$$PlaceReviewImplCopyWith<$Res> {
  __$$PlaceReviewImplCopyWithImpl(
      _$PlaceReviewImpl _value, $Res Function(_$PlaceReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? nickname = null,
    Object? createdAt = null,
    Object? comment = freezed,
  }) {
    return _then(_$PlaceReviewImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceReviewImpl implements _PlaceReview {
  _$PlaceReviewImpl(
      {required this.rating,
      required this.nickname,
      @JsonKey(fromJson: DateTime.parse) required this.createdAt,
      this.comment});

  factory _$PlaceReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceReviewImplFromJson(json);

  @override
  final double rating;
  @override
  final String nickname;
  @override
  @JsonKey(fromJson: DateTime.parse)
  final DateTime createdAt;
  @override
  final String? comment;

  @override
  String toString() {
    return 'PlaceReview(rating: $rating, nickname: $nickname, createdAt: $createdAt, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rating, nickname, createdAt, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceReviewImplCopyWith<_$PlaceReviewImpl> get copyWith =>
      __$$PlaceReviewImplCopyWithImpl<_$PlaceReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceReviewImplToJson(
      this,
    );
  }
}

abstract class _PlaceReview implements PlaceReview {
  factory _PlaceReview(
      {required final double rating,
      required final String nickname,
      @JsonKey(fromJson: DateTime.parse) required final DateTime createdAt,
      final String? comment}) = _$PlaceReviewImpl;

  factory _PlaceReview.fromJson(Map<String, dynamic> json) =
      _$PlaceReviewImpl.fromJson;

  @override
  double get rating;
  @override
  String get nickname;
  @override
  @JsonKey(fromJson: DateTime.parse)
  DateTime get createdAt;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$PlaceReviewImplCopyWith<_$PlaceReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
