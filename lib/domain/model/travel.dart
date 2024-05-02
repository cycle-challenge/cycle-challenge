import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

part 'travel.freezed.dart';

part 'travel.g.dart';

@freezed
class Travel with _$Travel {
  factory Travel({
    required String name,
    @Default('public') String visibility,
    @Default({}) Set<TravelPeriod> seasons,
    @JsonKey(fromJson: Image.fromJson) Image? thumbnail,
    int? id,
    @JsonKey(fromJson: TravelMotivation.of) TravelMotivation? motivation,
    @JsonKey(name: 'accompanyType', fromJson: TravelAccompany.of)
    TravelAccompany? accompany,
    @JsonKey(name: 'transportType', fromJson: TravelTransport.of)
    TravelTransport? transport,
    @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
    TravelAgeGroup? ageGroup,
    @NestedJsonKey(name: 'member/nickname') String? nickname,
    @Default([]) @JsonKey(fromJson: Travel._placesFromJson) List<Place> places,
    DateTime? statedOn,
    DateTime? endedOn,
  }) = _Travel;

  factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);

  static List<Place> _placesFromJson(List<dynamic> json) =>
      json.map((e) => Place.fromJson(e)).toList();
}
