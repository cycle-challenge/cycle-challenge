import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_ui_event.dart';

class TravelDetailViewModel with ChangeNotifier {
  final TravelRepository _repository;

  List<DailyVisitSummary> _dailySummaries = [];

  List<DailyVisitSummary> get dailySummaries => _dailySummaries;

  final StreamController<TravelDetailUIEvent> _eventController =
      StreamController.broadcast();
  Stream<TravelDetailUIEvent> get stream => _eventController.stream;

  void onEvent(TravelDetailEvent event) {
    event.when(
        scrollVisit: _scrollVisit,
        nextDayOfTravel: _nextDayOfTravel,
        prevDayOfTravel: _prevDayOfTravel,
        toggleMapView: _toggleMapView,
        changeVisit: _changeVisit,
        changePanelHeight: _changePanelHeight,
        showInitViewButton: _showInitViewButton,
        initView: _initView);
  }

  int _index = 0;

  int get index => _index;

  int _visitIndex = 0;

  int get visitIndex => _visitIndex;

  bool _isEntireMapView = false;
  bool get isEntireMapView => _isEntireMapView;

  DailyVisitSummary? get summary =>
      _dailySummaries.isNotEmpty ? _dailySummaries[_index] : null;

  double _panelHeight = 0;
  double get panelHeight => _panelHeight;

  bool _isShownInitViewButton = false;
  bool get isShownInitViewButton => _isShownInitViewButton;

  bool _isPanelExpanded = false;
  bool get isPanelExpanded => _isPanelExpanded;

  TravelDetailViewModel(int travelID, this._repository) {
    _loadItems(travelID).then((_) => _moveBound());
  }

  Future<void> _loadItems(int travelID) async {
    final result = await _repository.findVisits(travelID);

    result.when(
        success: (data) {
          _dailySummaries = data;
          notifyListeners();
        },
        error: (_) {},
        unhandledError: (_) {});
  }

  void _scrollVisit(int index) {
    final visits = _dailySummaries[_index].visits;
    if (index >= visits.length || index < 0) return;

    int prevIndex = _visitIndex;
    _visitIndex = index;

    if (prevIndex == _visitIndex) return;

    _moveBound();
    notifyListeners();
  }

  void _changeVisit(int index) {
    _visitIndex = index;
    notifyListeners();
    _eventController.add(TravelDetailUIEvent.moveScroll(index));
  }

  void _nextDayOfTravel() {
    final bool hasNext = _index + 1 < _dailySummaries.length;

    if (!hasNext) return;
    _index++;

    _initScreen();
    _moveBound();
    notifyListeners();
  }

  void _prevDayOfTravel() {
    final bool hasPrev = _index - 1 >= 0;

    if (!hasPrev) return;
    _index--;

    _initScreen();
    _moveBound();
    notifyListeners();
  }

  void _toggleMapView() {
    _isEntireMapView = !_isEntireMapView;

    if (_isEntireMapView) {
      _eventController
          .add(const TravelDetailUIEvent.showSnackBar("전체 보기 화면으로 전환합니다."));
    } else {
      _eventController
          .add(const TravelDetailUIEvent.showSnackBar("자세히 보기 화면으로 전환합니다."));
    }

    _moveBound();
    notifyListeners();
  }

  void _initScreen() {
    _visitIndex = 0;
    _eventController.add(const TravelDetailUIEvent.initScroll());
  }

  void _moveBound() {
    Bound bound = _isEntireMapView
        ? _dailySummaries[_index].bound.entire
        : _dailySummaries[_index].bound.visits[_visitIndex];

    _eventController.add(TravelDetailUIEvent.moveBound(bound));
  }

  void _changePanelHeight(double height) {
    _panelHeight = height;
    notifyListeners();
  }

  void _showInitViewButton() {
    if (_isShownInitViewButton == true) return;

    _isShownInitViewButton = true;
    notifyListeners();
  }

  void _initView() {
    _isShownInitViewButton = false;
    _moveBound();
    notifyListeners();
  }
}
