import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/visit_display_type.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class ModifyTravelUseCase {
  final TravelRepository _travelRepository;

  ModifyTravelUseCase(this._travelRepository);

  Future<Result<Travel, String?>> call(Travel travel, List<VisitDisplayType> items) async {
    final List<Visit> visits = [];

    // 방문 순서를 다시 계산
    int orderOfVisit = 0;
    items.forEach((elm) => elm.whenOrNull(
        item: (visit) =>
            visits.add(visit.copyWith(orderOfVisit: orderOfVisit++))));


    final result = await _travelRepository.modify(travel, visits);

    return result.when(
        success: (_) async {
          final result = await _travelRepository.find(travel.id!);

          return result.when(
              success: (travel) => Result.success(travel),
              error: (error) => Result.error(
                  error.whenOrNull(error: (_, message) => (message))));
        },
        error: (error) =>
            Result.error(error.whenOrNull(error: (_, message) => (message))));
  }
}
