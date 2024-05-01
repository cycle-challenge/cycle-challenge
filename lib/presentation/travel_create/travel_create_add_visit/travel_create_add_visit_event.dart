
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'travel_create_add_visit_event.freezed.dart';

@freezed
abstract class TravelCreateAddVisitEvent with _$TravelCreateAddVisitEvent {
  const factory TravelCreateAddVisitEvent.select(Place place) = _Select;
  const factory TravelCreateAddVisitEvent.unselect(Place place) = _Unselect;
}