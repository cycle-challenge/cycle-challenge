import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/datasource/google_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/local_stoarge.dart';
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/domain/model/session.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class PlaceRepository {
  RemoteAPI api;
  LocalStorage localStorage;

  GoogleApi googleApi;

  PlaceRepository(this.api, this.localStorage, this.googleApi);

  final String apiKey = const String.fromEnvironment("PLACE_API_KEY");
  final String remoteUrl = const String.fromEnvironment("REMOTE_HOST");

  Future<Result<List<Place>, ApiError>> findNearby(
      double latitude, double longitude, int radius) {
    return api.findNearby(latitude, longitude, radius);
  }

  Future<PageModel<ImageModel>> getImages(
      int id, int page, int pageSize) async {
    Map<String, String> params = {
      'page': page.toString(),
      'pageSize': pageSize.toString()
    };

    Uri uri = Uri.http(remoteUrl, '/api/v1/places/$id/images', params);

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return PageModel<ImageModel>.of(ImageModel.of, json['data']);
    } else {
      throw Exception(response.body);
    }
  }

  Future<Result<Bookmark, ApiError>> addPlaceBookmark(int id) async {
    return api.addPlaceBookmark(id);
  }

  Future<Result<Bookmark, ApiError>> deletePlaceBookmark(int id) async {
    return api.deletePlaceBookmark(id);
  }

  Future<Result<List<Place>, ApiError>> getBookmarkedPlace() async {
    return api.getBookmarkedPlace();
  }

  Future<Result<List<PlaceSuggestion>, String>> autoComplete(String query, Session session) async {
    return googleApi.autoComplete(query, session);
  }
  Future<Result<PlaceDetail, String>> getDetail(String googlePlaceId, {Session? session}) async {
    return googleApi.getDetail(googlePlaceId, session: session);
  }

  Future<Result<List<PlaceSuggestion>, String>> getSearchHistory() async {
    return localStorage.getSearchHistory();
  }

  Future<Result<List<PlaceSuggestion>, String>> addSearchHistory(PlaceSuggestion place) async {
    final result = await localStorage.addSearchHistory(place);

    return result.when(
        success: (_) async {
          final result = await localStorage.getSearchHistory();
          return result.when(
              success: (places) => Result.success(places),
              error: (message) => Result.error(message));
        },
        error: (message) => Result.error(message));
  }

  Future<Result<List<PlaceSuggestion>, String>> deleteSearchHistory(PlaceSuggestion place) async {
    final result = await localStorage.deleteSearchHistory(place);

    return result.when(
        success: (_) async {
          final result = await localStorage.getSearchHistory();
          return result.when(
              success: (places) => Result.success(places),
              error: (message) => Result.error(message));
        },
        error: (message) => Result.error(message));
  }

  Future<Result<Place, ApiError>> findByGooglePlaceId(String googlePlaceId) async {
    return api.findByGooglePlaceId(googlePlaceId);
  }
}
