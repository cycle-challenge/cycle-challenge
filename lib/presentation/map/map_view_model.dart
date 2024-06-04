import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_sort_option.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_filter_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_state.dart';

class MapViewModel with ChangeNotifier {
  MapState _state = MapState();

  final StreamController<MainUiEvent> _mainEventController;

  MapDataState _dataState = MapDataState();
  MapDataState get dataState => _dataState;

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

  void onEvent(MapEvent event) => event.when(
      findNearbyPlace: _findNearbyPlace,
      selectPlace: _onSelectPlace,
      changePosition: _changePosition,
      changeToMyPosition: _changeToMyPosition,
      updateFilter: _updateFilter,
      selectPlaceSearchResult: _onSelectPlaceSearchResult,
      getPlaceDetail: _onGetPlaceDetail,
      sortPlace: _onSortPlace);

  void _onSortPlace(PlaceSortOption option) {
    _filterDataState = _filterDataState.copyWith(placeSortOption: option);
    _sortPlace();
    notifyListeners();
  }

  void _onGetPlaceDetail(Place place) async {
    final result = await useCases.getPlaceDetail(place.googlePlaceId);

    result.when(
        success: (detail) {
          _dataState = _dataState.copyWith(
              placeDetails: {..._dataState.placeDetails, detail.id: detail});
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  Future<void> _findNearbyPlace() async {
    _state = _state.copyWith(isShownSearchButton: false);

    final result =
        await useCases.getNearbyTravels(_state.latitude, _state.longitude);

    result.when(
        success: (travels) {
          travels = travels.map((e) {
            final places = e.places
                .map((e) => e.copyWith(
                    distance: useCases.calculateDistanceUseCase(_state.latitude,
                        _state.longitude, e.latitude, e.longitude)))
                .toList();
            return e.copyWith(places: places);
          }).toList();

          _dataState = _dataState.copyWith(travels: travels);
          _filter();
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onSelectPlace(Place? place) {
    _filterDataState = _filterDataState.copyWith(selectedPlace: place);
    notifyListeners();
  }

  void _onSelectPlaceSearchResult(Place place) async {
    _onSelectPlace(place);

    // 카메라 위치 이동
    _eventController
        .add(MapUIEvent.moveCamera(place.latitude, place.longitude));
  }

  void _sortPlace() {
    final newPlaces = List<Place>.from(_filterDataState.filteredPlaces);

    _filterDataState.placeSortOption.when(
        nearest: () =>
            newPlaces.sort((a, b) => a.distance.compareTo(b.distance)),
        highestRated: () =>
            newPlaces.sort((a, b) => b.reviewAvg.compareTo(a.reviewAvg)),
        mostReviewed: () =>
            newPlaces.sort((a, b) => b.reviewCount.compareTo(a.reviewCount)));

    _filterDataState = _filterDataState.copyWith(filteredPlaces: newPlaces);
  }

  void _filter() {
    final travels = _dataState.travels;

    final placeFilter = _filterDataState.placeFilter;
    final travelFilter = _filterDataState.travelFilter;

    final filteredTravels = travelFilter.apply(travels);

    final filteredPlaces = placeFilter
        .apply(filteredTravels.expand((e) => e.places).toSet().toList());

    _filterDataState = _filterDataState.copyWith(
        filteredPlaces: filteredPlaces, filteredTravels: filteredTravels);
  }

  void _changePosition(CameraPosition position) {
    final latitude = position.target.latitude;
    final longitude = position.target.longitude;

    final distance = useCases.calculateDistanceUseCase(
        state.latitude, state.longitude, latitude, longitude);

    if (distance < 3.0) return;
    _state = _state.copyWith(latitude: latitude, longitude: longitude);

    if (_state.isShownSearchButton) return;
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
    _sortPlace();
    notifyListeners();
  }
}
