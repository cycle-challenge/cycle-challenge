import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class FindBookmarksUseCase {
  final PlaceRepository placeRepository;
  final TravelRepository travelRepository;

  FindBookmarksUseCase(this.placeRepository, this.travelRepository);

  Future<Result<(List<Bookmark>, List<Bookmark>), ApiError>> call() async {
    final [placeResult, travelResult] = await Future.wait([
      placeRepository.findPlaceBookmarks(),
      travelRepository.findTravelBookmarks()
    ]);

    return placeResult.when(
        success: (placeBookmarks) => travelResult.when(
            success: (travelBookmarks) =>
                Result.success((placeBookmarks, travelBookmarks)),
            error: (error) => Result.error(error)),
        error: (error) => Result.error(error));
  }
}
