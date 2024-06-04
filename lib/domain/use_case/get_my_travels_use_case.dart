
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetMyTravelsUseCase {

  final TravelRepository _travelRepository;

  GetMyTravelsUseCase(this._travelRepository);

  Future<Result<List<Travel>, String>> call() async {

    final result = await _travelRepository.findMy();

    return result.when(
        success: (travels) {
          travels.sort((a, b) => b.id!.compareTo(a.id!));
          return Result.success(travels);
        },
        error: (error) => Result.error(
            error.whenOrNull(error: (_, message) => message) ??
                '서버와 통신 중 오류가 발생했습니다.'));
  }

}