
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class AddTravelBookmarkUseCase {

  final TravelRepository travelRepository;

  AddTravelBookmarkUseCase(this.travelRepository);

  Future<Result<Bookmark, ApiError>> call(int id) async {

    final result = await travelRepository.addTravelBookmark(id);
    return result;
  }

}