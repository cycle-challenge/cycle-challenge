import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';


class PlaceFilter implements Filter<Place> {
  final Set<PlaceType> _type = <PlaceType>{};

  Set<PlaceType> get type => _type;

  @override
  bool get hasAnyFilter => _type.isNotEmpty;

  @override
  void init() {
    _type.clear();
  }

  bool _filterSingle<T>(Set<T> filters, T value) {
    if (filters.isEmpty) return true;
    return filters.contains(value);
  }

  @override
  List<Place> apply(List<Place> places) {
    if (!hasAnyFilter) return places;

    return places
        .where((place) => _filterSingle<PlaceType>(_type, place.type))
        .toList();
  }
}
