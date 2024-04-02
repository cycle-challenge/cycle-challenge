import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/load_marker_use_case.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    @Default(false) bool isShownSearchButton,
    @Default(false) bool isDetermining,
    @Default(0) int navigationIndex,
    @Default({}) MarkerMap markerIcon,
    @Default({}) MarkerMap selectedMarkerIcon,
    @Default(37.6272) double latitude,
    @Default(127.4987) double longitude
  }) = _MapState;
}
