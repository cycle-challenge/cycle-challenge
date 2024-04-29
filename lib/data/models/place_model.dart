import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_location.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';

class PlaceModel {
  final int _id;

  final String _name;

  final PlaceLocation _location;

  final PlaceType _type;

  final List<ImageModel> _images;

  final String _googlePlaceId;

  final List<TravelModel> _travels;

  PlaceDetail? detail;

  String get name => _name;

  PlaceLocation get location => _location;

  PlaceType get type => _type;

  List<ImageModel> get images => _images;

  String get googlePlaceId => _googlePlaceId;

  List<TravelModel> get travels => _travels;

  PlaceModel({
    required id,
    required name,
    required location,
    required type,
    required images,
    required googlePlaceId,
    required travels,
  })  : _id = id,
        _name = name,
        _location = location,
        _type = type,
        _images = images,
        _googlePlaceId = googlePlaceId,
        _travels = travels;

  int get id => _id;

  factory PlaceModel.of(Map<String, dynamic> json) {
    return PlaceModel(
        id: json["id"],
        name: json["name"],
        location: PlaceLocation.of(json["location"]),
        type: PlaceType.of(json["type"]),
        images: json["images"] != null
            ? List.of(json["images"]).map((e) => ImageModel.of(e)).toList()
            : <ImageModel>[],
        travels: json["travels"] != null
            ? List.of(json["travels"]).map((e) => TravelModel.of(e)).toList()
            : <TravelModel>[],
        googlePlaceId: json["googlePlaceId"]);
  }
}
