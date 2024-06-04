
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class VisitRepository {

  final RemoteAPI remoteAPI;

  VisitRepository(this.remoteAPI);

  Future<Result<void, ApiError>> createAll(int travelId, List<Visit> visits) {
    return remoteAPI.createTravelVisits(travelId, visits);
  }

  Future<Result<void, ApiError>> delete(int travelId, int visitId) {
    return remoteAPI.deleteTravelVisit(travelId, visitId);
  }
  Future<Result<List<Visit>, ApiError>> findAllByTravel(int travelId) async {
    return remoteAPI.findTravelVisits(travelId);
  }

}