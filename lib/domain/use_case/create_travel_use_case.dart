import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CreateTravelUseCase {
  final TravelRepository _travelRepository;

  CreateTravelUseCase(this._travelRepository);

  Future<Result<Travel, String?>> call(Travel travel) async {

    final result = await _travelRepository.create(travel);

    return result.when(
        success: (id) async {
          final result = await _travelRepository.find(id);

          return result.when(
              success: (travel) => Result.success(travel),
              error: (error) => Result.error(
                  error.whenOrNull(error: (_, message) => (message))));
        },
        error: (error) =>
            Result.error(error.whenOrNull(error: (_, message) => (message))));
  }
}
