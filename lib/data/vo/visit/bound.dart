import 'package:yeohaeng_ttukttak/data/vo/place/place_location.dart';

class Bound {
  final PlaceLocation _southwest;

  final PlaceLocation _northeast;

  PlaceLocation get southwest => _southwest;

  PlaceLocation get northeast => _northeast;

  Bound(this._southwest, this._northeast);

  factory Bound.of(Map<String, dynamic> json) {
    return Bound(PlaceLocation.of(json["southwest"]),
        PlaceLocation.of(json["northeast"]));
  }
}

class BoundModel {

  Bound _entire;

  List<Bound> _visits;

  Bound get entire => _entire;

  List<Bound> get visits => _visits;

  BoundModel(this._entire, this._visits);

  factory BoundModel.of(Map<String, dynamic> json) {
    return BoundModel(Bound.of(json["entire"]),
        List.of(json["visits"]).map((e) => Bound.of(e)).toList());
  }

}