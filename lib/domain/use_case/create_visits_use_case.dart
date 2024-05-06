import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/visit_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/visit_display_type.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CreateVisitsUseCase {
  final VisitRepository _visitRepository;

  CreateVisitsUseCase(this._visitRepository);

  Future<Result<List<Visit>, String?>> call(int travelId, List<Visit> visits) async {

    final result = await _visitRepository.createAll(travelId, visits);

    return result.when(
        success: (_) async {
          final result = await _visitRepository.findAllByTravel(travelId);

          return result.when(
              success: (visits) => Result.success(visits),
              error: (error) => Result.error(
                  error.whenOrNull(error: (_, message) => (message))));
        },
        error: (error) =>
            Result.error(error.whenOrNull(error: (_, message) => (message))));
  }
}
