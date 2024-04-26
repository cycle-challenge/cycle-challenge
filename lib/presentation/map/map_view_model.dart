import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_filter_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_state.dart';

class MapViewModel with ChangeNotifier {
  MapState _state = MapState();

  final StreamController<MainUiEvent> _mainEventController;

  MapDataState _dataState = MapDataState();

  MapFilterDataState _filterDataState = MapFilterDataState(
      placeFilter: PlaceFilter(), travelFilter: TravelFilter());

  final StreamController<MapUIEvent> _eventController =
      StreamController.broadcast();
  Stream<MapUIEvent> get stream => _eventController.stream;

  final UseCases useCases;

  MapViewModel(this.useCases, this._mainEventController) {
    useCases.loadMarker().then((result) => result.when(
        success: (data) {
          final (makrerIcon, selectedMarkerIcon) = data;
          _state = _state.copyWith(
              markerIcon: makrerIcon, selectedMarkerIcon: selectedMarkerIcon);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  // getter
  MapState get state => _state;
  MapFilterDataState get filterState => _filterDataState;

  void onEvent(MapEvent event) {
    event.when(
        findNearbyPlace: _findNearbyPlace,
        selectPlace: _selectPlace,
        changePosition: _changePosition,
        showSearchButton: _showSearchButton,
        changeToMyPosition: _changeToMyPosition,
        updateFilter: _updateFilter,
        selectPlaceResult: _onSelectPlaceResult);
  }

  void _onSelectPlaceResult(Place place) {
    _eventController
        .add(MapUIEvent.moveCamera(place.latitude, place.longitude));
  }

  void _findNearbyPlace() async {
    _state = _state.copyWith(isShownSearchButton: false);

    final result =
        await useCases.getNearbyPlaces(_state.latitude, _state.longitude);

    result.when(success: (result) {
      final (places, travels) = result;
      _dataState = _dataState.copyWith(places: places, travels: travels);
      _filter();
    }, error: (message) {
      _mainEventController.add(MainUiEvent.showSnackbar(message));
    });
  }

  void _selectPlace(PlaceModel? place) {
    _filterDataState = _filterDataState.copyWith(selectedPlace: place);
    notifyListeners();
  }

  void _filter() {
    List<PlaceModel> places = _dataState.places;
    List<TravelModel> travels = _dataState.travels;

    final placeFilter = _filterDataState.placeFilter;
    final travelFilter = _filterDataState.travelFilter;

    final filteredPlaces = placeFilter
        .apply(places)
        .where((place) => travelFilter.apply(place.travels).isNotEmpty)
        .toList();

    final filteredTravels = travelFilter.apply(travels);

    _filterDataState = _filterDataState.copyWith(
        filteredPlaces: filteredPlaces, filteredTravels: filteredTravels);

    notifyListeners();
  }

  void _changePosition(CameraPosition position) {
    double latitude = position.target.latitude;
    double longitude = position.target.longitude;

    _state = _state.copyWith(latitude: latitude, longitude: longitude);
  }

  void _showSearchButton() {
    _state = _state.copyWith(isShownSearchButton: true);
    notifyListeners();
  }

  void _changeToMyPosition() async {
    final result = await useCases.getMyLocation();

    result.when(success: (data) {
      final (latitude, longitude) = data;
      _state = _state.copyWith(latitude: latitude, longitude: longitude);
      _eventController.add(MapUIEvent.moveCamera(latitude, longitude));
    }, error: (message) {
      _mainEventController.add(MainUiEvent.showSnackbar(message));
    });
  }

  void _updateFilter(Filter filter) {
    if (filter is PlaceFilter) {
      _filterDataState = _filterDataState.copyWith(placeFilter: filter);
    } else if (filter is TravelFilter) {
      _filterDataState = _filterDataState.copyWith(travelFilter: filter);
    }
    _filter();
    notifyListeners();
  }
}
