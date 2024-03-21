
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

class VisitModel {

  final List<PlaceModel> places;

  VisitModel({ required this.places });

  factory VisitModel.of(Map<String, dynamic> json) {
    return VisitModel(places: List.of(json['places'])
        .map((e) => PlaceModel.of(e)).toList());
  }

}