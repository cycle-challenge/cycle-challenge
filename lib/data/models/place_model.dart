import 'package:yeohaeng_ttukttak/data/models/image.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_location.dart';

class PlaceModel {
  final int _id;

  final String _name;

  final PlaceLocation _location;

  final String _type;

  final List<Image> _images;

  final String _googlePlaceId;

  PlaceDetail? _detail;

  PlaceDetail? get detail => _detail;

  String get name => _name;

  PlaceLocation get location => _location;

  String get type => _type;

  List<Image> get images => _images;

  String get googlePlaceId => _googlePlaceId;

  void setDetail(PlaceDetail detail) {
    _detail = detail;
  }

  PlaceModel({
    required id,
    required name,
    required location,
    required type,
    required images,
    required googlePlaceId,
  })  : _id = id,
        _name = name,
        _location = location,
        _type = type,
        _images = images,
        _googlePlaceId = googlePlaceId;

  int get id => _id;

  factory PlaceModel.of(Map<String, dynamic> json) {
    return PlaceModel(
        id: json["id"],
        name: json["name"],
        location: PlaceLocation.of(json["location"]),
        type: json["type"],
        images: List.of(json["images"]).map((e) => Image.of(e)).toList(),
        googlePlaceId: json["googlePlaceId"]);
  }
}