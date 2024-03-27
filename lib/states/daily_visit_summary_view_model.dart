import 'package:flutter/widgets.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';

class TravelDetailViewModel with ChangeNotifier {
  late final TravelRepository _repository;

  List<DailyVisitSummary> _dailySummaries = [];
  List<DailyVisitSummary> get dailySummaries => _dailySummaries;

  bool get hasNext => _index + 1 < _dailySummaries.length;
  bool get hasPrev => _index - 1 >= 0;

  bool get hasNextVisit {
    if (_dailySummaries.isEmpty) return false;
    return _visitIndex + 1 < _dailySummaries[_index].visits.length;
  }
  bool get hasPrevVisit => _visitIndex - 1 >= 0;

  int _index = 0;
  int get index => _index;

  int _visitIndex = 0;
  int get visitIndex => _visitIndex;

  DailyVisitSummary? get summary =>
      _dailySummaries.isNotEmpty ? _dailySummaries[_index] : null;

  VisitModel? get visit =>
      summary != null ? summary?.visits[_visitIndex] : null;

  void nextVisit() {
    if (_dailySummaries.isEmpty) return;
    if (!hasNextVisit) return;

    _visitIndex++;
    notifyListeners();
  }

  void prevVisit() {
    if (_dailySummaries.isEmpty) return;
    if (!hasPrevVisit) return;

    _visitIndex--;
    notifyListeners();
  }

  void next() {
    if (!hasNext) return;
    _index++;
    _visitIndex = 0;
    notifyListeners();
  }

  void prev() {
    if (!hasPrev) return;
    _index--;
    _visitIndex = 0;
    notifyListeners();
  }

  TravelDetailViewModel(int travelID) {
    _repository = TravelRepository();
    _loadItems(travelID);
  }

  Future<void> _loadItems(int travelID) async {
    _dailySummaries = await _repository.findVisits(travelID);
    notifyListeners();
  }
}
