import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

part 'travel.freezed.dart';

part 'travel.g.dart';

@freezed
class Travel with _$Travel {
  factory Travel({
    required String name,
    @Default('public') String visibility,
    @Default({}) Set<TravelPeriod> seasons,
    @JsonKey(includeIfNull: false, fromJson: Image.fromJson) Image? thumbnail,
    int? id,
    @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of) TravelMotivation? motivation,
    @JsonKey(includeIfNull: false, name: 'accompanyType', fromJson: TravelAccompany.of)
    TravelAccompany? accompany,
    @JsonKey(includeIfNull: false, name: 'transportType', fromJson: TravelTransport.of)
    TravelTransport? transport,
    @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
    TravelAgeGroup? ageGroup,
    @NestedJsonKey(name: 'member/nickname') String? nickname,
    @Default([]) @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson) List<Place> places,
    @JsonKey(fromJson: DateTime.parse) DateTime? startedOn,
    @JsonKey(fromJson: DateTime.parse) DateTime? endedOn
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);

  static List<Place> _placesFromJson(List<dynamic> json) =>
      json.map((e) => Place.fromJson(e)).toList();

}
