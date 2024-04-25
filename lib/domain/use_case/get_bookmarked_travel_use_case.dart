import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetBookmarkedTravelUseCase {
  final TravelRepository travelRepository;

  GetBookmarkedTravelUseCase(this.travelRepository);

  Future<Result<List<TravelModel>, String>> call() async {
    final result = await travelRepository.getBookmarkedTravel();

    return result.when(
        success: (travels) => Result.success(travels),
        error: (error) => error.when(
            targetError: (_, error) => Result.error(error.values.join("\n")),
            error: (_, message) => Result.error(message)));
  }
}
