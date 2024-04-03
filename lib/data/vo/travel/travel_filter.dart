import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';

import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';

class TravelFilter implements Filter<TravelModel> {
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

  @override
  bool get hasAnyFilter =>
      _ageGroup.isNotEmpty ||
      _period.isNotEmpty ||
      _transport.isNotEmpty ||
      _motivation.isNotEmpty ||
      _accompany.isNotEmpty;

  @override
  void init() {
    _ageGroup.clear();
    _period.clear();
    _transport.clear();
    _motivation.clear();
    _accompany.clear();
  }

  bool _filterSingle<T>(Set<T> filters, T value) {
    if (filters.isEmpty) return true;
    return filters.contains(value);
  }

  @override
  List<TravelModel> apply(List<TravelModel> travels) {
    if (!hasAnyFilter) return travels;

    return travels
        .where((travel) =>
            _filterSingle<TravelAgeGroup>(_ageGroup, travel.ageGroup) &&
            (_period.isEmpty ||
                _period.intersection(travel.seasons).isNotEmpty) &&
            _filterSingle<TravelTransport>(_transport, travel.transport) &&
            _filterSingle<TravelMotivation>(_motivation, travel.motivation) &&
            _filterSingle<TravelAccompany>(_accompany, travel.accompany))
        .toList();
  }
}
