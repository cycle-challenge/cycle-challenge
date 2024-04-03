import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetNearbyPlacesUseCase {
  final PlaceRepository repository;

  GetNearbyPlacesUseCase(this.repository);

  Future<Result<(List<PlaceModel>, List<TravelModel>)>> call(
      double latitude, double longitude) async {
    try {
      final results = await repository.findNearby(latitude, longitude, 5000);

      if (results.isEmpty) return const Result.error("검색된 장소가 없습니다.");

      final places = results.where((elm) => elm.travels.isNotEmpty).toList();
      final travels =
          Set.of(places.map((e) => e.travels).expand((e) => e).toList())
              .toList();

      return Result.success((places, travels));
    } catch (e) {
      return const Result.error("검색 중 오류가 발생했습니다.");
    }
  }
}
