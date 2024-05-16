import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GoogleApi {
  final Dio dio = Dio();

  final String apiKey = const String.fromEnvironment('PLACE_API_KEY');

  Future<Result<PlaceDetail, String>> getDetail(String googlePlaceId) async {
    try {
      final headers = {'Accept-Language': 'ko'};

      final response = await dio.get(
          'https://places.googleapis.com/v1/places/$googlePlaceId',
          queryParameters: {
            'fields':
                'id,nationalPhoneNumber,regularOpeningHours,websiteUri',
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
