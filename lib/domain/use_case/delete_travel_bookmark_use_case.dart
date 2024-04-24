

import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class DeleteTravelBookmarkUseCase {

  final TravelRepository travelRepository;

  DeleteTravelBookmarkUseCase(this.travelRepository);

  Future<Result<List<Bookmark>, ApiError>> call(int id) async {

    final result = await travelRepository.deleteTravelBookmark(id);

    return result.when(success: (_) async {
      final result = await travelRepository.findTravelBookmarks();

      return result.when(success: (bookmarks) => Result.success(bookmarks),
          error: (error) => Result.error(error));

    }, error: (error) => Result.error(error));

  }

}