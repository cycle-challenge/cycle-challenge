import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';

class RemoteAPI {
  final Dio dio;

  RemoteAPI(this.dio);

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

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

  Future<ApiResult<Member>> signUp(
      String email, String password, String nickname) async {
    final response = await dio.post('$remoteUrl/api/v1/members/sign-up',
        data: {'email': email, 'password': password, 'nickname': nickname},
        options: Options(headers: headers));

    if (response.statusCode != HttpStatus.created &&
        response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(response.data, Member.fromJson);
  }

  Future<ApiResult<Auth>> renewAuth(String refreshToken) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/auth/renew');

    final body = jsonEncode({'refreshToken': refreshToken});

    final response = await post(uri, headers: headers, body: body);
    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(json, Auth.fromJson);
  }

  Future<ApiResult<Member>> findProfile() async {

    try {

      final response = await dio.get('$remoteUrl/api/v1/members/profile',
          options: Options(headers: headers));

      if (response.statusCode != HttpStatus.ok) {
        return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
      }

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
    final params = {
      'location': '$latitude,$longitude',
      'radius': radius.toString(),
    };

    final response = await dio.get('$remoteUrl//api/v1/places/nearby',
        queryParameters: params, options: Options(headers: headers));

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(response.data,
        (data) => (data as List).map((e) => PlaceModel.of(e)).toList());
  }

  Future<ApiResult<PageModel<ImageModel>>> getImages(
      int id, int page, int pageSize) async {
    final params = {'page': page.toString(), 'pageSize': pageSize.toString()};

    final response = await dio.get('$remoteUrl/api/v1/places/$id/images',
        queryParameters: params);

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(
        response.data, (data) => PageModel<ImageModel>.of(ImageModel.of, data));
  }
}
