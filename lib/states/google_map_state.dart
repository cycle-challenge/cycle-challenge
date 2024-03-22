import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/utils/geo.dart';

class GoogleMapState with ChangeNotifier {

  final Completer<GoogleMapController> _completer = Completer<GoogleMapController>();

  bool _isMoving = false, _isDetermining = false;

  late CameraPosition _position;

  void init(GoogleMapController controller) async {
      Position position = await determinePosition();
      _completer.complete(controller);
      _position = CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 13);
  }

  bool get isMoving => _isMoving;
  bool get isDetermining => _isDetermining;

  double get latitude => _position.target.latitude;
  double get longitude => _position.target.longitude;

  Future<GoogleMapController> get controller => _completer.future;

  void setIsMoving(bool isMoving) {
      _isMoving = isMoving;
      notifyListeners();
  }

  void setPosition(CameraPosition position) {
    _position = position;
  }

  Future<void> moveToMyLocation() async{
    _isDetermining = true;
    notifyListeners();
    
    Position position = await determinePosition();

    GoogleMapController controller = await _completer.future;
    
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 13)
    ));

    _isDetermining = false;
    notifyListeners();
  }

  void moveToCenter() async {
    GoogleMapController controller = await _completer.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(latitude, longitude), zoom: 13)
    ));
  }

}