import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';

import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_state.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class PlaceDetailViewModel with ChangeNotifier {
  final UseCases useCases;

  final StreamController<MainUiEvent> _mainEventController;

  PlaceDetailState _state = PlaceDetailState();
  PlaceDetailState get state => _state;

  final StreamController<PlaceDetailUIEvent> _eventController =
      StreamController.broadcast();
  Stream<PlaceDetailUIEvent> get stream => _eventController.stream;

  PlaceDetailViewModel(Place place, this.useCases, this._mainEventController) {
    useCases.findPlaceReviewsUseCase(place.id).then((result) => result.when(
        success: (reviews) {
          _state = _state.copyWith(reviews: reviews);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));

    useCases.findPlaceTravelsUseCase(place.id).then((result) => result.when(
        success: (travels) {
          _state = _state.copyWith(travels: travels);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));

    useCases.findPlaceImagesUseCase(place.id).then((value) => value.when(success: (images) {

      _state = _state.copyWith(images: images);
      notifyListeners();
    },

        error: (message) =>
        _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void onEvent(PlaceDetailEvent event) => event.when(
      toggleBusinessHourExpanded: _toggleBusinessHourExpanded,
      fetchImage: _fetchPlaceImage,
      callPhone: _callPhone,
      copyText: _copyText,
      launchURL: _launchURL,
      changeImageIndex: _onChangeImageIndex);

  void _onChangeImageIndex(int index) {
    _state = _state.copyWith(imageIndex: index);
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

  void _callPhone(String? phoneNumber) async {
    final result = await useCases.callPhone(phoneNumber);

    result.when(
        success: (_) {},
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _copyText(String? text) async {
    Result result = await useCases.copyText(text);

    result.when(
        success: (_) => _mainEventController
            .add(const MainUiEvent.showSnackbar("성공적으로 복사되었습니다.")),
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _launchURL(String? url) async {
    Result result = await useCases.launchURL(url);

    result.when(
        success: (_) {},
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }
}
