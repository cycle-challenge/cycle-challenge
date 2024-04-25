
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class TravelRepository {

  RemoteAPI api;

  TravelRepository(this.api);

  Future<Result<List<DailyVisitSummary>, ApiError>> findVisits(int id) async {
    return api.findVisits(id);
  }
}
