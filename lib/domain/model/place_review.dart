
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'place_review.freezed.dart';

part 'place_review.g.dart';

@freezed
class PlaceReview with _$PlaceReview {
  factory PlaceReview({
    required double rating,
    required String nickname,
    required bool wantsToRevisit,
    @JsonKey(fromJson: DateTime.parse) required DateTime createdAt,
    String? comment
  }) = _PlaceReview;

  factory PlaceReview.fromJson(Map<String, dynamic> json) => _$PlaceReviewFromJson(json);
}