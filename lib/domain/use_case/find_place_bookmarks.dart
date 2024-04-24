

import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class FindPlaceBookmarksUseCase {

  final PlaceRepository placeRepository;

  FindPlaceBookmarksUseCase(this.placeRepository);
  
  Future<Result<List<Bookmark>, ApiError>> call() async {

    return placeRepository.findPlaceBookmarks();

  }

}