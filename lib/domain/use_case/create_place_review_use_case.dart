import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CreatePlaceReviewUseCase {

  final PlaceRepository placeRepository;

  CreatePlaceReviewUseCase(this.placeRepository);

  Future<Result<void, String>> call(int id, double rating, bool wantsToRevisit, String? comment) async {

    final result = await placeRepository.createReview(id, rating, wantsToRevisit, comment);

    return result;

  }

}