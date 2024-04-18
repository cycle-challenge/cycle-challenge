import 'dart:convert';
import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:ntp/ntp.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

typedef RequestFn = Future<Response> Function(dynamic);

class RemoteAPI {
  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  final Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
    'Accept-Language': 'ko'
  };

  Future<ApiResult<Auth>> signIn(String email, String password) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/sign-in');

    final body = jsonEncode({'email': email, 'password': password});

    final response = await post(uri, headers: headers, body: body);
    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(json, Auth.fromJson);
  }

  Future<ApiResult<Member>> signUp(
      String email, String password, String nickname) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/sign-up');

    final body = jsonEncode(
        {'email': email, 'password': password, 'nickname': nickname});

    final response = await post(uri, headers: headers, body: body);
    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode != HttpStatus.created &&
        response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(json, Member.fromJson);
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

  Future<ApiResult<Member>> findProfile(Auth auth) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/profile');

    final response = await get(uri,
        headers: {...headers, 'Authorization': 'Bearer ${auth.accessToken}'});

    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(json, Member.fromJson);
  }


}
