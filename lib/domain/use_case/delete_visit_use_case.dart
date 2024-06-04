
import 'package:yeohaeng_ttukttak/data/repositories/visit_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class DeleteVisitUseCase {
  final VisitRepository _visitRepository;

  DeleteVisitUseCase(this._visitRepository);

  Future<Result<List<Visit>, String?>> call(Travel travel, Visit visit) async {

    late final Result result;

    if (visit.id == null) {
      result = const Result.success(null);
    } else {
      result = await _visitRepository.delete(travel.id!, visit.id!);
    }

    return result.when(
        success: (_) async {
          final result = await _visitRepository.findAllByTravel(travel.id!);

          return result.when(
              success: (visits) => Result.success(visits),
              error: (error) => Result.error(
                  error.whenOrNull(error: (_, message) => (message))));
        },
        error: (error) =>
            Result.error(error.whenOrNull(error: (_, message) => (message))));
  }
}
