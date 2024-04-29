import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/domain/model/session.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GoogleApi {
  final Dio dio = Dio();

  final String apiKey = const String.fromEnvironment('PLACE_API_KEY');

  Future<Result<List<PlaceSuggestion>, String>> autoComplete(
      String query, Session session) async {
    try {
      final response = await dio.post(
          'https://places.googleapis.com/v1/places:autocomplete',
          queryParameters: {'key': apiKey, 'input': query},
          options: Options(headers: {
            'Accept-Language': 'ko',
            'sessionToken': session.token
          }));

      if (!response.data.containsKey('suggestions'))
        return const Result.success([]);

      final places = List.of(response.data['suggestions'])
          .map((e) => PlaceSuggestion.fromJson(e))
          .toList();

      return Result.success(places);
    } on DioException catch (e) {
      debugPrint(e.response?.data);
      return const Result.error('서버와 통신 중 오류가 발생했습니다.');
    }
  }

  Future<Result<PlaceDetail, String>> getDetail(String googlePlaceId,
      {Session? session}) async {
    try {
      final headers = {'Accept-Language': 'ko'};

      if (session != null) {
        headers.addAll({'sessionToken': session.token});
      }

      final response = await dio.get(
          'https://places.googleapis.com/v1/places/$googlePlaceId',
          queryParameters: {
            'fields':
                'id,formattedAddress,nationalPhoneNumber,regularOpeningHours,websiteUri,location',
            'key': apiKey
          },
          options: Options(headers: headers));

      return Result.success(PlaceDetail.of(response.data));
    } on DioException catch (e) {
      debugPrint(e.response?.data);
      return const Result.error('서버와 통신 중 오류가 발생했습니다.');
    }
  }
}
