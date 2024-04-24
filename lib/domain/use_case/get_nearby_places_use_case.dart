import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetNearbyPlacesUseCase {
  final PlaceRepository repository;

  GetNearbyPlacesUseCase(this.repository);

  Future<Result<(List<PlaceModel>, List<TravelModel>, List<Bookmark>), String>> call(
      double latitude, double longitude) async {

    final [result, bookmarkResult] = await Future.wait([
      repository.findNearby(latitude, longitude, 5000),
      repository.findPlaceBookmarks()
    ]);

    return result.when(
        success: (data) {
          return bookmarkResult.when(success: (bookmarks) {

            if (data.isEmpty) return const Result.error("검색된 장소가 없습니다.");

            final places =
            data.where((elm) => (elm as PlaceModel).travels.isNotEmpty).toList() as List<PlaceModel>;
            final travels =
            Set.of(places.map((e) => e.travels).expand((e) => e).toList())
                .toList();

            return Result.success((places, travels, bookmarks as List<Bookmark>));

          }, error: (error) => Result.error(error.when(
              targetError: (_, __) => '',
              error: (_, message) => message)));

        },
        error: (error) => Result.error(error.when(
            targetError: (_, __) => '',
            error: (_, message) => message)));
  }
}
