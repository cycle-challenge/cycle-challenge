import 'package:dio/dio.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class KakaoApi {
  final Dio dio = Dio();

  final String apiKey = const String.fromEnvironment("KAKAO_API_KEY");

  Future<Result<List<Place>, String>> search(String query) async {
    try {
      final response = await dio.get(
          'https://dapi.kakao.com/v2/local/search/keyword',
          queryParameters: {'query': query},
          options: Options(headers: {'Authorization': 'KakaoAK $apiKey'}));

      final places = List.of(response.data['documents'])
          .map((e) => Place.fromKakaoJson(e))
          .toList();

      return Result.success(places);
    } on DioException catch (e) {
      return const Result.error('서버와 통신 중 오류가 발생했습니다.');
    }
  }
}
