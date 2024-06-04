import 'package:dart_jts/dart_jts.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';

class CalculateBoundUseCase {
  static final GeometryFactory geometryFactory =
      GeometryFactory.withPrecisionModelSrid(PrecisionModel(), 4326);

  ({VisitArea entire, List<VisitArea> partials}) call(List<Visit> visits) {
    final Envelope entire = Envelope.empty();

    final List<Envelope> envelops = visits
        .map((visit) => geometryFactory.createPoint(
            Coordinate(visit.place.longitude, visit.place.latitude)))
        .map((point) => point.buffer(0.01).getEnvelopeInternal())
        .toList();

    // 전체 영역을 계산
    envelops.forEach((point) => entire.expandToIncludeEnvelope(point));

    // 각 관광지를 순회하며 부분 영역을 계산
    final List<VisitArea> partials = envelops.map((envelop) {
      final Envelope partial = Envelope.empty();

      partial.expandToIncludeEnvelope(envelop);

      // 다른 관광지가 부분 영역에 포함되는지 검사하고, 참일 경우 부분 영역에 포함
      envelops
          .where((other) => partial.intersectsEnvelope(other))
          .forEach((other) => partial.expandToIncludeEnvelope(other));
      return VisitArea.fromEnvelop(partial);
    }).toList();

    return (entire: VisitArea.fromEnvelop(entire), partials: partials);
  }
}
