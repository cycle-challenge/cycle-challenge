import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';

class TravelFilter {

  final Set<TravelAgeGroup> _ageGroup = <TravelAgeGroup>{};

  final Set<TravelPeriod> _period = <TravelPeriod>{};

  final Set<TravelTransport> _transport = <TravelTransport>{};

  final Set<TravelMotivation> _motivation = <TravelMotivation>{};

  final Set<TravelAccompany> _accompany = <TravelAccompany>{};

  Set<TravelAgeGroup> get ageGroup => _ageGroup;

  Set<TravelPeriod> get period => _period;

  Set<TravelTransport> get transport => _transport;

  Set<TravelMotivation> get motivation => _motivation;

  Set<TravelAccompany> get accompany => _accompany;

  bool get hasAnyFilter =>
      _ageGroup.isNotEmpty ||
          _period.isNotEmpty ||
          _transport.isNotEmpty ||
          _motivation.isNotEmpty ||
          _accompany.isNotEmpty;

  void init() {
    _ageGroup.clear();
    _period.clear();
    _transport.clear();
    _motivation.clear();
    _accompany.clear();
  }

}