
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'travel_add_visit_event.freezed.dart';

@freezed
abstract class TravelAddVisitEvent with _$TravelAddVisitEvent {
  const factory TravelAddVisitEvent.select(Place place) = _Select;
  const factory TravelAddVisitEvent.unselect(Place place) = _Unselect;
  const factory TravelAddVisitEvent.updateFilter(PlaceFilter filter) = _UpdateFilter;
}