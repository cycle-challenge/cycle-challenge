import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';

class TravelDetailViewModel with ChangeNotifier {
  late final TravelRepository _repository;

  late final BuildContext _context;

  List<DailyVisitSummary> _dailySummaries = [];

  List<DailyVisitSummary> get dailySummaries => _dailySummaries;

  bool get hasNext => _index + 1 < _dailySummaries.length;

  bool get hasPrev => _index - 1 >= 0;

  bool get hasNextVisit {
    if (_dailySummaries.isEmpty) return false;
    return _visitIndex + 1 < _dailySummaries[_index].visits.length;
  }

  bool get hasPrevVisit => _visitIndex - 1 >= 0;

  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;
  void switchExpanded() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }

  final List<Set<Marker>> _markers = [];
  List<Set<Marker>> get markers => _markers;

  Set<Polyline> _polylines = {};

  Set<Polyline> get polylines => _polylines;

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

  set imageIndex(int value) {
    _imageIndex = value;
    notifyListeners();
  }


  set zoomLevel(int value) {
    _zoomLevel = value;
    notifyListeners();
  }

  DailyVisitSummary? get summary =>
      _dailySummaries.isNotEmpty ? _dailySummaries[_index] : null;

  VisitModel? get visit =>
      summary != null ? summary?.visits[_visitIndex] : null;

  void nextVisit() {
    if (_dailySummaries.isEmpty) return;
    if (!hasNextVisit) return;

    _visitIndex++;
    _imageIndex = 0;
    initMarker();
  }

  void prevVisit() {
    if (_dailySummaries.isEmpty) return;
    if (!hasPrevVisit) return;

    _visitIndex--;
    _imageIndex = 0;
    initMarker();
  }

  void next() {
    if (!hasNext) return;
    _index++;
    _visitIndex = 0;
    _imageIndex = 0;
    initMarker();
  }

  void prev() {
    if (!hasPrev) return;
    _index--;
    _visitIndex = 0;
    _imageIndex = 0;
    initMarker();
  }

  TravelDetailViewModel(BuildContext context, int travelID) {
    _repository = TravelRepository();
    _context = context;
    _loadItems(travelID).then((_) {
      for (var _ in _dailySummaries) {
        _markers.add({});
      }
      initMarker();
    });
  }

  Future<void> initMarker() async {
    List<Future<void>> list = [];

    List<LatLng> locations = [];

    _polylines.clear();

    for (int i = 0; i < _dailySummaries[_index].visits.length; i++) {
      VisitModel visit = _dailySummaries[_index].visits[i];
      PlaceModel place = visit.place;

      int selectedId = _dailySummaries[_index].visits[visitIndex].id;
      TextStyle? titleLarge = Theme.of(_context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.w600);

      list.add(Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.3)),
            shape: BoxShape.circle,
            color: visit.id == selectedId ? Colors.red : Colors.white),
        child: Center(
          child: Text(
            (i + 1).toString(),
            style: titleLarge?.copyWith(
                color: visit.id == selectedId ? Colors.white : Colors.black),
          ),
        ),
      ).toBitmapDescriptor().then((widget) => _markers[_index].add(Marker(
          markerId: MarkerId(place.id.toString()),
          onTap: () {
            _visitIndex = i;
            notifyListeners();
            initMarker();
          },
          consumeTapEvents: true,
          anchor: const Offset(0.5, 0.5),
          icon: widget,
          zIndex: visit.id == selectedId ? 100 : 1,
          position:
              LatLng(place.location.latitude, place.location.longitude)))));

      locations.add(LatLng(place.location.latitude, place.location.longitude));

      if (i + 1 < _dailySummaries[_index].visits.length) {
        VisitModel nextVisit = _dailySummaries[_index].visits[i + 1];

        _polylines.add(Polyline(
            polylineId: PolylineId("poly-$i"),
            color: visit.id == selectedId || nextVisit.id == selectedId
                ? Colors.red
                : Colors.black.withOpacity(0.3),
            width: 2,
            zIndex: 1,
            points: [
              LatLng(place.location.latitude, place.location.longitude),
              LatLng(nextVisit.place.location.latitude,
                  nextVisit.place.location.longitude)
            ]));
      }
    }

    await Future.wait(list);
    notifyListeners();
  }

  Future<void> _loadItems(int travelID) async {
    _dailySummaries = await _repository.findVisits(travelID);
    notifyListeners();
  }
}
