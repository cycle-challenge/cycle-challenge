import 'package:yeohaeng_ttukttak/data/vo/image.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';

class TravelModel {
  final int _id;

  final String _name;

  final TravelMotivation _motivation;

  final TravelAccompany _accompany;

  final TravelTransport _transport;

  final Image _thumbnail;

  final String _nickname;

  final TravelAgeGroup _ageGroup;

  final List<PlaceModel> _places;

  final Set<TravelPeriod> _seasons;

  int get id => _id;

  String get name => _name;

  TravelMotivation get motivation => _motivation;

  TravelAccompany get accompany => _accompany;

  TravelTransport get transport => _transport;

  Image get thumbnail => _thumbnail;

  String get nickname => _nickname;

  TravelAgeGroup get ageGroup => _ageGroup;

  List<PlaceModel> get places => _places;

  Set<TravelPeriod> get seasons => _seasons;

  TravelModel(
      this._id,
      this._name,
      this._motivation,
      this._accompany,
      this._transport,
      this._thumbnail,
      this._nickname,
      this._ageGroup,
      this._places,
      this._seasons);

  factory TravelModel.of(Map<String, dynamic> json) {
    return TravelModel(
        json["id"],
        json["name"],
        TravelMotivation.of(json["motivation"]),
        TravelAccompany.of(json["accompanyType"]),
        TravelTransport.of(json["transportType"]),
        Image.of(json["thumbnail"]),
        json["member"]?["nickname"],
        TravelAgeGroup.of(json["member"]?["ageGroup"]),
        List.of(json["places"]).map((place) => PlaceModel.of(place)).toList(),
        Set.from(json["seasons"]?.map((season) => TravelPeriod.of(season))));
  }
}
