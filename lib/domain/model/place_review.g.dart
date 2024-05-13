// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceReviewImpl _$$PlaceReviewImplFromJson(Map<String, dynamic> json) =>
    _$PlaceReviewImpl(
      rating: (json['rating'] as num).toDouble(),
      nickname: json['nickname'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$$PlaceReviewImplToJson(_$PlaceReviewImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'nickname': instance.nickname,
      'createdAt': instance.createdAt.toIso8601String(),
      'comment': instance.comment,
    };
