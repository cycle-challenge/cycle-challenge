import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'visit.freezed.dart';

part 'visit.g.dart';

@freezed
class Visit with _$Visit {
  factory Visit({
    int? id,
    int? dayOfTravel,
    int? orderOfVisit,
    @JsonKey(fromJson: Place.fromJson) required Place place,
    @JsonKey(fromJson: Visit._imagesFromJson) @Default([]) List<Image> images,
  }) = _Visit;

  factory Visit.fromJson(Map<String, dynamic> json) => _$VisitFromJson(json);

  static List<Image> _imagesFromJson(List<dynamic> json) =>
      json.map((e) => Image.fromJson(e)).toList();
}
