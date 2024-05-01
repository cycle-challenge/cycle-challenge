import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_state.dart';

class TravelCreateAddVisitViewModel with ChangeNotifier {
  TravelCreateAddVisitState _state =
      TravelCreateAddVisitState(placeFilter: PlaceFilter());
  TravelCreateAddVisitState get state => _state;

  void onEvent(TravelCreateAddVisitEvent event) => event.when(
      select: _onSelect, unselect: _onUnselect, updateFilter: _onUpdateFilter);

  void _onUpdateFilter(PlaceFilter filter) {
    _state = _state.copyWith(placeFilter: filter);
    notifyListeners();
  }

  void _onSelect(Place place) {
    _state = _state.copyWith(
        selectedPlaces: List.of(_state.selectedPlaces)..add(place));
    notifyListeners();
  }

  void _onUnselect(Place place) {
    _state = _state.copyWith(
        selectedPlaces: List.of(_state.selectedPlaces)..remove(place));
    notifyListeners();
  }
}
