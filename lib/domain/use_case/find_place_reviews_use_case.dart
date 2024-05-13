
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class FindPlaceReviewsUseCase {

  final PlaceRepository _placeRepository;

  FindPlaceReviewsUseCase(this._placeRepository);

  Future<Result<List<PlaceReview>, String>> call(int placeId) async {
    return _placeRepository.findReviews(placeId);
  }

}