
import 'package:dart_jts/dart_jts.dart';

class CalculateDistanceUseCase {

  static final GeometryFactory geometryFactory =
  GeometryFactory.withPrecisionModelSrid(PrecisionModel(), 4326);

  double call(double lat1, double lon1, double lat2, double lon2) {
    Point point1 = geometryFactory.createPoint(Coordinate(lon1, lat1));
    Point point2 = geometryFactory.createPoint(Coordinate(lon2, lat2));
    
    return point1.distance(point2) * 100;
  }

}