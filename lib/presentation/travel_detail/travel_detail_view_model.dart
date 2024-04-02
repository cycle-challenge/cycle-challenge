import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_ui_event.dart';

class TravelDetailViewModel with ChangeNotifier {
  late final TravelRepository _repository;

  List<DailyVisitSummary> _dailySummaries = [];

  List<DailyVisitSummary> get dailySummaries => _dailySummaries;

  bool get hasNext => _index + 1 < _dailySummaries.length;

  bool get hasPrev => _index - 1 >= 0;


  final StreamController<TravelDetailUIEvent> _eventController =
  StreamController.broadcast();
  Stream<TravelDetailUIEvent> get stream => _eventController.stream;


  void onEvent(TravelDetailEvent event) {
    event.when(changeVisit: _changeVisit);
  }

  void _changeVisit(int index) {

    final visits = _dailySummaries[_index].visits;
    if (index >= visits.length || index < 0) return;

    int prevIndex = _visitIndex;
    _visitIndex = index;

    if (prevIndex == _visitIndex) return;

    Bound bound = _zoomLevel == 0 ? _dailySummaries[_index].bound.entire :
    _dailySummaries[_index].bound.visits[_visitIndex];
    _eventController.add(TravelDetailUIEvent.moveBound(bound, _zoomLevel));
    notifyListeners();
  }

  bool get hasNextVisit {
    if (_dailySummaries.isEmpty) return false;
    return _visitIndex + 1 < _dailySummaries[_index].visits.length;
  }

  bool get hasPrevVisit => _visitIndex - 1 >= 0;

  set visitIndex(int value) {
    int prevIndex = _visitIndex;
    _visitIndex = value;

    if (prevIndex != value) {
      notifyListeners();
    }
  }

  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;
  void switchExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  int _index = 0;

  int get index => _index;

  int _visitIndex = 0;

  int get visitIndex => _visitIndex;

  int _zoomLevel = 2;
  int get zoomLevel => _zoomLevel;

  bool get canZoomIn => _zoomLevel + 1 < 3;
  bool get canZoomOut => _zoomLevel - 1 >= 0;

  int _imageIndex = 0;

  int get imageIndex => _imageIndex;

  set zoomLevel(int value) {
    _zoomLevel = value;
    notifyListeners();
  }

  DailyVisitSummary? get summary =>
      _dailySummaries.isNotEmpty ? _dailySummaries[_index] : null;

  VisitModel? get visit =>
      summary != null ? summary?.visits[_visitIndex] : null;


  void next() {
    if (!hasNext) return;
    _index++;
    _visitIndex = 0;
    _imageIndex = 0;
    notifyListeners();
  }

  void prev() {
    if (!hasPrev) return;
    _index--;
    _visitIndex = 0;
    _imageIndex = 0;
    notifyListeners();
  }

  TravelDetailViewModel(int travelID) {
    _repository = TravelRepository();
    _loadItems(travelID).then((_) {
      Bound bound = _zoomLevel == 0 ? _dailySummaries[_index].bound.entire :
      _dailySummaries[_index].bound.visits[_visitIndex];
      _eventController.add(TravelDetailUIEvent.moveBound(bound, _zoomLevel));
    });
  }


  Future<void> _loadItems(int travelID) async {
    _dailySummaries = await _repository.findVisits(travelID);
    notifyListeners();
  }
}
