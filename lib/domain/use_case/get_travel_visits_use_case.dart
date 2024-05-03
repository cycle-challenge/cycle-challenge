import 'package:yeohaeng_ttukttak/data/repositories/visit_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetTravelVisitsUseCase {

  final VisitRepository _visitRepository;

  GetTravelVisitsUseCase(this._visitRepository);

  Future<Result<List<Visit>, String>> call(int travelId) async {
    final result = await _visitRepository.findAllByTravel(travelId);

    return result.when(success: (visits) => Result.success(visits),

        error: (error) => error.maybeWhen(
            error: (_, message) => Result.error(message),
            orElse: () => const Result.error('서버와 통신 중 에러가 발생했습니다.')));
  }

}