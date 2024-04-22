import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';

class RemoteAPI {
  final Dio dio;

  RemoteAPI(this.dio);

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");
  final String remoteHost = const String.fromEnvironment("REMOTE_HOST");

  final Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
    'Accept-Language': 'ko'
  };

  Future<ApiResult<Auth>> signIn(String email, String password) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/members/sign-in',
          data: {'email': email, 'password': password},
          options: Options(headers: headers));

      return ApiResult.success(Auth.fromJson(response.data['data']));
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<Member>> signUp(String email, String password,
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

      return ApiResult.success(Member.fromJson(response.data['data']));
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<Auth>> renewAuth(String refreshToken) async {
    try {
      final response = await dio.post('$remoteUrl/api/v1/members/auth/renew',
          data: {'refreshToken': refreshToken},
          options: Options(headers: headers));

      return ApiResult.success(Auth.fromJson(response.data['data']));
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<Member>> findProfile() async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/members/profile',
          options: Options(headers: headers));

      return ApiResult.success(Member.fromJson(response.data['data']));
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<List<PlaceModel>>> findNearby(
      double latitude, double longitude, int radius) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/nearby',
          queryParameters: {
            'location': '$latitude,$longitude',
            'radius': radius.toString(),
          },
          options: Options(headers: headers));

      return ApiResult.success(
          List.of(response.data['data']).map((e) => PlaceModel.of(e)).toList());
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<PageModel<ImageModel>>> getImages(
      int id, int page, int pageSize) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/places/$id/images',
          queryParameters: {
            'page': page.toString(),
            'pageSize': pageSize.toString()
          },
          options: Options(headers: headers));

      return ApiResult.success(
          PageModel<ImageModel>.of(ImageModel.of, response.data['data']));
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }

  Future<ApiResult<void>> verifyEmail(String email) async {
    try {
      await dio.post('$remoteUrl/api/v1/members/email/verify/send',
          data: {'email': email}, options: Options(headers: headers));

      return const ApiResult.success(null);
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }


  Future<ApiResult<List<DailyVisitSummary>>> findVisits(int id) async {
    try {
      final response = await dio.get('$remoteUrl/api/v1/travels/$id/visits',
          options: Options(headers: headers));

      return ApiResult.success(
          List.of(response.data["data"])
              .map((e) => DailyVisitSummary.of(e))
              .toList());
    } on DioException catch (e) {
      if (e.response?.statusCode == 500) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

      return ApiResult.error([ApiError.fromJson(e.response?.data['data'])]);
    }
  }
}
