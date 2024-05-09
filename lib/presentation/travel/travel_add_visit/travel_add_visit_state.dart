
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'travel_add_visit_state.freezed.dart';

@freezed
class TravelAddVisitState with _$TravelAddVisitState {
  factory TravelAddVisitState({
    @Default([]) List<Place> selectedPlaces,
    required PlaceFilter placeFilter
  }) = _TravelAddVisitState;

}