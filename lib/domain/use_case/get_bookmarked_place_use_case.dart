import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetBookmarkedPlaceUseCase {
  final PlaceRepository placeRepository;

  GetBookmarkedPlaceUseCase(this.placeRepository);

  Future<Result<List<Place>, String>> call() async {
    final result = await placeRepository.getBookmarkedPlace();

    return result.when(
        success: (places) => Result.success(places),
        error: (error) => error.when(
            targetError: (_, error) => Result.error(error.values.join("\n")),
            error: (_, message) => Result.error(message)));
  }
}
