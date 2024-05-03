import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CreateTravelUseCase {
  final TravelRepository _travelRepository;

  CreateTravelUseCase(this._travelRepository);

  Future<Result<Travel, String?>> call(Travel travel,
      DateTimeRange? travelDates, List<TravelGroupItem> group) async {
    if (travelDates == null) {
      return const Result.error('날짜를 선택해 주세요.');
    }

    final List<Visit> visits = [];

    // 방문 순서를 다시 계산
    int orderOfVisit = 0;
    group.forEach((elm) => elm.whenOrNull(
        visit: (visit) =>
            visits.add(visit.copyWith(orderOfVisit: orderOfVisit++))));

    if (visits.isEmpty) {
      return const Result.error('최소 한 개 이상의 관광지를 선택해야 합니다.');
    }

    for (Visit visit in visits) {
      if (visit.dayOfTravel == null) {
        return const Result.error('들릴 관광지에 날짜를 선택해 주세요.');
      }
    }

    final result = await _travelRepository.create(
        travel.copyWith(statedOn: travelDates.start, endedOn: travelDates.end),
        visits);

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
