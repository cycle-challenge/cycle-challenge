import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_location.dart';

class VisitModel {
  final int _id;

  final int _dayOfTravel;

  final int _orderOfVisit;

  final PlaceModel _place;

  final List<ImageModel> _images;

  int get dayOfTravel => _dayOfTravel;

  int get orderOfVisit => _orderOfVisit;

  PlaceModel get place => _place;

  List<ImageModel> get images => _images;

  int get id => _id;

  VisitModel(this._id, this._dayOfTravel, this._orderOfVisit, this._place,
      this._images);

  factory VisitModel.of(Map<String, dynamic> json) {
    return VisitModel(
        json["id"],
        json['dayOfTravel'],
        json['orderOfVisit'],
        PlaceModel.of(json['place']),
        List.of(json['images']).map((e) => ImageModel.of(e)).toList());
  }
}

class DailyVisitSummary {
  final int _dayOfTravel;

  final List<VisitModel> _visits;

  final PlaceLocation _southWest;

  final PlaceLocation _northEast;

  int get dayOfTravel => _dayOfTravel;

  List<VisitModel> get visits => _visits;

  PlaceLocation get southWest => _southWest;

  PlaceLocation get northEast => _northEast;

  DailyVisitSummary(
      this._dayOfTravel, this._visits, this._southWest, this._northEast);

  factory DailyVisitSummary.of(Map<String, dynamic> json) {
    return DailyVisitSummary(
        json["dayOfTravel"],
        List.of(json["visits"]).map((e) => VisitModel.of(e)).toList(),
        PlaceLocation.of(json["bounds"]?["southWest"]),
        PlaceLocation.of(json["bounds"]?["northEast"]));
  }
}
