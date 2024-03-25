import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';

import '../../models/place_model.dart';

class PlaceFilter {
  final Set<PlaceType> _type = <PlaceType>{};

  Set<PlaceType> get type => _type;

  bool get hasAnyFilter => _type.isNotEmpty;

  void init() {
    _type.clear();
  }

  bool _filterSingle<T>(Set<T> filters, T value) {
    if (filters.isEmpty) return true;
    return filters.contains(value);
  }

  List<PlaceModel> apply(List<PlaceModel> places) {
    if (!hasAnyFilter) return places;

    return places
        .where((place) => _filterSingle<PlaceType>(_type, place.type))
        .toList();
  }
}
