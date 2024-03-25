

class PlaceLocation {

  final double _latitude;

  final double _longitude;

  final double _distance;

  double get latitude => _latitude;

  double get longitude => _longitude;

  double get distance => _distance;

  const PlaceLocation({required latitude, required longitude, required distance})
      : _latitude = latitude,
        _longitude = longitude,
        _distance = distance;

  factory PlaceLocation.of(Map<String, dynamic> json) {
    return PlaceLocation(
        latitude: json['latitude'],
        longitude: json['longitude'],
        distance: json['distance']);
  }
}