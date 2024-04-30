import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetNearbyPlacesUseCase {
  final PlaceRepository repository;

  GetNearbyPlacesUseCase(this.repository);

  Future<Result<(List<Place>, List<Travel>), String>> call(
      double latitude, double longitude) async {
    final result = await repository.findNearby(latitude, longitude, 5000);

    return result.when(
        success: (data) {
          if (data.isEmpty) return const Result.error("검색된 장소가 없습니다.");

          final places = data.where((elm) => elm.travels.isNotEmpty).toList();
          final travels =
              Set.of(places.map((e) => e.travels).expand((e) => e).toList())
                  .toList();

          return Result.success((places, travels));
        },
        error: (error) => Result.error(error.when(
            targetError: (_, __) => '', error: (_, message) => message)));
  }
}
