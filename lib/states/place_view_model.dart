import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';

import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';

class PlaceViewModel with ChangeNotifier {
  final PlaceRepository _placeRepository = PlaceRepository();

  List<PlaceModel> _places = [];
  List<PlaceModel> get places => _placeFilter.apply(_places.where((e) => _travelFilter.apply(e.travels).isNotEmpty).toList());

  List<TravelModel> get travels => _travelFilter.apply(
      Set.of(_places.map((e) => e.travels).expand((e) => e).toList()).toList());

  PlaceModel? get selectedPlace =>
      _places.where((place) => place.id == _selectedPlaceID).firstOrNull;

  final Map<String, bool> areFiltered = {};

  int _selectedPlaceID = -1;
  int get selectedPlaceID => _selectedPlaceID;
  bool get isSelected => _selectedPlaceID != -1;

  final TravelFilter _travelFilter = TravelFilter();
  TravelFilter get travelFilter => _travelFilter;

  final PlaceFilter _placeFilter = PlaceFilter();
  PlaceFilter get placeFilter => _placeFilter;

  void notify(var callback) {
    callback();
    notifyListeners();
  }

  selectPlace(int id) {
    _selectedPlaceID = id;
    notifyListeners();
  }

  unSelectPlace() {
    _selectedPlaceID = -1;
    notifyListeners();
  }

  void filterType(String type) {
    areFiltered[type] = !areFiltered[type]!;
    notifyListeners();
  }

  bool isFiltered(String type) {
    bool isSelectedAtLeast =
        areFiltered.values.where((e) => e == true).toList().isNotEmpty;
    return isSelectedAtLeast ? areFiltered[type]! : true;
  }

  void search(double latitude, double longitude) async {
    _places = await _placeRepository.findNearby(latitude, longitude, 5000);
    _places = _places.where((elm) => elm.travels.isNotEmpty).toList();
    notifyListeners();
  }


}
