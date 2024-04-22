
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';

class TravelRepository {

  RemoteAPI api;

  TravelRepository(this.api);

  Future<ApiResult<List<DailyVisitSummary>>> findVisits(int id) async {
    return api.findVisits(id);
  }
}
