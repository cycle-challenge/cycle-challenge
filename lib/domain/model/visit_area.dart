import 'package:dart_jts/dart_jts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visit_area.freezed.dart';

@freezed
class VisitArea with _$VisitArea {
  factory VisitArea({
    required double swLat,
    required double swLon,
    required double neLat,
    required double neLon,
  }) = _VisitArea;

  factory VisitArea.fromEnvelop(Envelope envelope) {
    return VisitArea(
        swLat: envelope.getMinY(),
        swLon: envelope.getMinX(),
        neLat: envelope.getMaxY(),
        neLon: envelope.getMaxX());
  }
}
