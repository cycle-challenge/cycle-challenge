import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/utils/marker.dart';

import '../data/models/place_type.dart';
import '../data/repositories/visit_repository.dart';

class PlaceViewModel with ChangeNotifier {
  final VisitRepository _visitRepository = VisitRepository();

  final Map<String, BitmapDescriptor> _markerIcon = {},
      _selectedMarkerIcon = {};
  Map<String, BitmapDescriptor> get makerIcon => _markerIcon;
  Map<String, BitmapDescriptor> get selectedMakerIcon => _selectedMarkerIcon;

  List<PlaceModel> _places = [];
  List<PlaceModel> get places =>
      _places.where((place) => isFiltered(place.type)).toList();

  PlaceModel? get selectedPlace =>
      _places.where((place) => place.id == _selectedPlaceID).firstOrNull;

  final Map<String, bool> areFiltered = {};

  int _selectedPlaceID = -1;
  int get selectedPlaceID => _selectedPlaceID;
  bool get isSelected => _selectedPlaceID != -1;

  PlaceViewModel() {
    for (PlaceType type in placeTypes) {
      areFiltered[type.value] = false;
    }
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
    VisitModel visit = await _visitRepository.get(latitude, longitude, 5000);
    _places = visit.places;
    notifyListeners();
  }
}
