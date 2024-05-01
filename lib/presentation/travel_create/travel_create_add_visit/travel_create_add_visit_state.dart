
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'travel_create_add_visit_state.freezed.dart';

@freezed
class TravelCreateAddVisitState with _$TravelCreateAddVisitState {
  factory TravelCreateAddVisitState({
    @Default([]) List<Place> selectedPlaces
  }) = _TravelCreateAddVisitState;

}