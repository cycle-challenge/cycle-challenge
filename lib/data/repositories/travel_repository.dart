import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class TravelRepository {
  RemoteAPI api;

  TravelRepository(this.api);

  Future<Result<List<Travel>, ApiError>> findNearby(
      double latitude, double longitude, int radius) {
    return api.findNearby(latitude, longitude, radius);
  }

  Future<Result<List<DailyVisitSummary>, ApiError>> findVisits(int id) async {
    return api.findVisits(id);
  }

  Future<Result<Bookmark, ApiError>> addTravelBookmark(int id) async {
    return api.addTravelBookmark(id);
  }

  Future<Result<Bookmark, ApiError>> deleteTravelBookmark(int id) async {
    return api.deleteTravelBookmark(id);
  }

  Future<Result<List<Travel>, ApiError>> getBookmarkedTravel() async {
    return api.getBookmarkedTravel();
  }

  Future<Result<int, ApiError>> create(Travel travel, List<Visit> visits) {
    return api.createTravel(travel, visits);
  }

  Future<Result<Travel, ApiError>> find(int id) {
    return api.findTravel(id);
  }
  
}
