
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_map_state.freezed.dart';

@freezed
class GoogleMapState with _$GoogleMapState {
  factory GoogleMapState({
    Brightness? brightness
  }) = _GoogleMapState;

}