import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetNearbyTravelsUseCase {
  final TravelRepository repository;

  GetNearbyTravelsUseCase(this.repository);

  Future<Result<List<Travel>, String>> call(
      double latitude, double longitude) async {
    final result = await repository.findNearby(latitude, longitude, 5000);

    return result.when(
        success: (travels) => Result.success(travels),
        error: (error) => Result.error(
            error.whenOrNull(error: (_, message) => message) ??
                '서버와 통신 중 오류가 발생했습니다.'));
  }
}
