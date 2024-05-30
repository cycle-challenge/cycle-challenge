
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_map_event.freezed.dart';

@freezed
abstract class GoogleMapEvent with _$GoogleMapEvent {
  const factory GoogleMapEvent.changeBrightness(Brightness brightness) = _ChangeBrightness;
}