import 'package:yeohaeng_ttukttak/data/models/image.dart';

class PlaceModel {
  final int id;

  final String name;

  final Location location;

  final String type;

  final List<Image> images;

  final List<dynamic> travels;

  const PlaceModel({
    required this.id,
    required this.name,
    required this.location,
    required this.type,
    required this.images,
    required this.travels,
  });

  factory PlaceModel.of(Map<String, dynamic> json) {
    return PlaceModel(
      id: json["id"],
      name: json["name"],
      location: Location.of(json["location"]),
      type: json["type"],
      images: List.of(json["images"]).map((e) => Image.of(e)).toList(),
      travels: json["travels"],
    );
  }
}

class Location {
  final double latitude;

  final double longitude;

  final double distance;

  const Location({required this.latitude, required this.longitude, required this.distance});

  factory Location.of(Map<String, dynamic> json) {
    return Location(
        latitude: json['latitude'], longitude: json['longitude'], distance: json['distance']);
  }
}