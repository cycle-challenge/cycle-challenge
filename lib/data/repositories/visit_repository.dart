
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class VisitRepository {

  final RemoteAPI remoteAPI;

  VisitRepository(this.remoteAPI);

  Future<Result<List<Visit>, ApiError>> findAllByTravel(int travelId) async {
    return remoteAPI.findTravelVisits(travelId);
  }

}