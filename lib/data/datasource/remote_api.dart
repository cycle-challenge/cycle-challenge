import 'package:dio/dio.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/bookmark.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class RemoteAPI {
  final Dio dio;

  RemoteAPI(this.dio);

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");
  final String remoteHost = const String.fromEnvironment("REMOTE_HOST");

  final Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
    'Accept-Language': 'ko'
  };

  Future<Result<Auth, ApiError>> signIn(String email, String password) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/members/sign-in',
          data: {'email': email, 'password': password},
          options: Options(headers: headers));

      return Result.success(Auth.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Member, ApiError>> signUp(String email, String password,
      String nickname, String verificationCode) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/members/sign-up',
          data: {
            'email': email,
            'password': password,
            'nickname': nickname,
            'verificationCode': verificationCode
          },
          options: Options(headers: headers));

      return Result.success(Member.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Auth, ApiError>> renewAuth(String refreshToken) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/members/auth/renew',
          data: {'refreshToken': refreshToken},
          options: Options(headers: headers));

      return Result.success(Auth.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Member, ApiError>> findProfile() async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/members/profile',
          options: Options(headers: headers));

      return Result.success(Member.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<List<PlaceModel>, ApiError>> findNearby(
      double latitude, double longitude, int radius) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/nearby',
          queryParameters: {
            'location': '$latitude,$longitude',
            'radius': radius.toString(),
          },
          options: Options(headers: headers));

      return Result.success(
          List.of(response.data['data']).map((e) => PlaceModel.of(e)).toList());
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<PageModel<ImageModel>, ApiError>> getImages(
      int id, int page, int pageSize) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/$id/images',
          queryParameters: {
            'page': page.toString(),
            'pageSize': pageSize.toString()
          },
          options: Options(headers: headers));

      return Result.success(
          PageModel<ImageModel>.of(ImageModel.of, response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<void, ApiError>> verifyEmail(String email) async {
    try {
      await dio.post('$remoteUrl/api/v1/members/email/verify/send',
          data: {'email': email}, options: Options(headers: headers));

      return const Result.success(null);
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<List<DailyVisitSummary>, ApiError>> findVisits(int id) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/travels/$id/visits',
          options: Options(headers: headers));

      return Result.success(List.of(response.data["data"])
          .map((e) => DailyVisitSummary.of(e))
          .toList());
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Bookmark, ApiError>> addPlaceBookmark(int id) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/bookmarks/places/$id',
          options: Options(headers: headers));

      return Result.success(Bookmark.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Bookmark, ApiError>> deletePlaceBookmark(int id) async {
    try {
      final response = await dio.delete(
          '$remoteUrl/api/v1/bookmarks/places/$id',
          options: Options(headers: headers));

      return Result.success(Bookmark.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Bookmark, ApiError>> addTravelBookmark(int id) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/bookmarks/travels/$id',
          options: Options(headers: headers));

      return Result.success(Bookmark.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<Bookmark, ApiError>> deleteTravelBookmark(int id) async {
    try {
      final response = await dio.delete(
          '$remoteUrl/api/v1/bookmarks/travels/$id',
          options: Options(headers: headers));

      return Result.success(Bookmark.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<List<PlaceModel>, ApiError>> getBookmarkedPlace() async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/bookmarked',
          options: Options(headers: headers));

      return Result.success(
          List.of(response.data['data']).map((e) => PlaceModel.of(e)).toList());
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }

  Future<Result<List<TravelModel>, ApiError>> getBookmarkedTravel() async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/travels/bookmarked',
          options: Options(headers: headers));

      return Result.success(List.of(response.data['data'])
          .map((e) => TravelModel.of(e))
          .toList());
    } on DioException catch (e) {
      return Result.error(ApiError.fromResponse(e.response));
    }
  }


  Future<Result<PlaceModel, ApiError>> findByGooglePlaceId(String googlePlaceId) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/',
          queryParameters: { 'googlePlaceId': googlePlaceId },
          options: Options(headers: headers));

      return Result.success(PlaceModel.of(response.data['data']));
    } on DioException catch (e) {
      print(e.response);
      return Result.error(ApiError.fromResponse(e.response));
    }
  }
}
