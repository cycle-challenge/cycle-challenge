import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_state.dart';

class PlaceDetailViewModel with ChangeNotifier {
  final UseCases useCases;

  PlaceDetailState _state = PlaceDetailState(
      isBusinessHourExpanded: false, placeDetail: null, placeImages: []);
  PlaceDetailState get state => _state;

  final StreamController<PlaceDetailUIEvent> _eventController =
      StreamController.broadcast();
  Stream<PlaceDetailUIEvent> get stream => _eventController.stream;

  PlaceDetailViewModel(String googlePlaceID, this.useCases) {
    _load(googlePlaceID);
  }

  void onEvent(PlaceDetailEvent event) {
    event.when(
        load: _load,
        toggleBusinessHourExpanded: _toggleBusinessHourExpanded,
        fetchImage: _fetchPlaceImage);
  }

  void _load(String googlePlaceID) async {
    PlaceDetail detail = await useCases.getPlaceDetail(googlePlaceID);
    _state = _state.copyWith(placeDetail: detail);
    notifyListeners();
  }

  void _toggleBusinessHourExpanded() {
    _state =
        _state.copyWith(isBusinessHourExpanded: !_state.isBusinessHourExpanded);
    notifyListeners();
  }

  void _fetchPlaceImage(int placeID, int pageNumber, int pageSize) async {
    PageModel<ImageModel> page =
        await useCases.getPlaceImage(placeID, pageNumber, pageSize);
    List<ImageModel> images = page.entities;


    if (!page.hasNextPage) {
      return _eventController.add(PlaceDetailUIEvent.addLastImages(images));
    }

    final int nextPageNumber = pageNumber + images.length;

    _eventController.add(PlaceDetailUIEvent.addImages(images, nextPageNumber));
  }
}
