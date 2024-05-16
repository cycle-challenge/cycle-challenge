import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

part 'place.freezed.dart';

part 'place.g.dart';

@freezed
class Place with _$Place {
  factory Place(
      {required int id,
      required String name,
      @NestedJsonKey(name: 'location/latitude') required double latitude,
      @NestedJsonKey(name: 'location/longitude') required double longitude,
      required String googlePlaceId,
      @JsonKey(name: 'localAddress') String? localAddr,
      @JsonKey(name: 'roadAddress') String? roadAddr,
      @JsonKey(fromJson: PlaceType.of) required PlaceType type,
      @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson) @Default([]) List<Image> images,
      @JsonKey(includeFromJson: false) double? distance}) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  static List<Image> _imagesFromJson(List<dynamic> json) =>
      json.map((e) => Image.fromJson(e)).toList();
}
