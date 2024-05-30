import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_state.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_ui_event.dart';

class GoogleMapViewModel with ChangeNotifier {

  final StreamController<GoogleMapUiEvent> _eventController = StreamController.broadcast();
  Stream<GoogleMapUiEvent> get stream => _eventController.stream;

  GoogleMapState _state = GoogleMapState();
  GoogleMapState get state => _state;

  void onEvent(GoogleMapEvent event) =>
      event.when(changeBrightness: _onChangeBrightness);

  void _onChangeBrightness(Brightness brightness) async {
    if (_state.brightness == brightness) return;

    _state = _state.copyWith(brightness: brightness);

    final style = await rootBundle.loadString(
        'assets/map/${brightness == Brightness.light ? 'map_style.json' : 'map_style_dark.json'}');

    _eventController.add(GoogleMapUiEvent.changeMapStyle(style));
  }
}
