import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';

import 'package:yeohaeng_ttukttak/data/models/place_type.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'navigation_state.dart';

class PlaceViewModel with ChangeNotifier {
  final TravelRepository _travelRepository = TravelRepository();
  final PlaceRepository _placeRepository = PlaceRepository();

  final Map<String, BitmapDescriptor> _markerIcon = {},
      _selectedMarkerIcon = {};
  Map<String, BitmapDescriptor> get makerIcon => _markerIcon;
  Map<String, BitmapDescriptor> get selectedMakerIcon => _selectedMarkerIcon;

  List<PlaceModel> _places = [];
  List<PlaceModel> get places =>
      travels.map((e) => e.places).expand((e) => e).toList()
          .where((place) => isFiltered(place.type)).toList();

  List<TravelModel> _travels = [];
  List<TravelModel> get travels => _travelFilter.apply(_travels);

  PlaceModel? get selectedPlace =>
      _places.where((place) => place.id == _selectedPlaceID).firstOrNull;

  final Map<String, bool> areFiltered = {};

  int _selectedPlaceID = -1;
  int get selectedPlaceID => _selectedPlaceID;
  bool get isSelected => _selectedPlaceID != -1;

  final TravelFilter _travelFilter = TravelFilter();
  TravelFilter get travelFilter => _travelFilter;

  void notify(var callback) {
    callback();
    notifyListeners();
  }

  bool _isFetchingDetail = false;
  PlaceViewModel() {
    for (PlaceType type in placeTypes) {
      areFiltered[type.value] = false;
    }
    notifyListeners();
  }

  selectPlace(int id) {
    _selectedPlaceID = id;
    _isFetchingDetail = false;
    notifyListeners();
  }

  unSelectPlace() {
    _selectedPlaceID = -1;
    _isFetchingDetail = false;
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
    _travels = await _travelRepository.get(latitude, longitude, 3000);
    _places = _travels.map((e) => e.places).expand((e) => e).toList();
    notifyListeners();
  }

  void update(Navigate navigate) {
    _selectedPlaceID = navigate.selectedPlaceId ?? _selectedPlaceID;
    notifyListeners();
  }

  Future<void> getDetail() async {
    PlaceModel? place = selectedPlace;
    if (_isFetchingDetail || place == null) return;

    if (place.detail != null) return;

    _isFetchingDetail = true;

    PlaceDetail detail =
        await _placeRepository.getDetailInfo(place.googlePlaceId);
    place.setDetail(detail);

    _isFetchingDetail = false;
    notifyListeners();
  }
}
