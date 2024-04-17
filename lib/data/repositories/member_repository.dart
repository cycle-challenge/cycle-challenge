import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';

class MemberRepository {
  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  Future<ApiResult<void>> signIn(String email, String password) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/sign-in');
    final headers = {
      'Content-type': 'application/json; charset=UTF-8',
      'Accept-Language': 'ko'
    };

    final body = jsonEncode({'email': email, 'password': password});

    final response = await post(uri, headers: headers, body: body);
    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));

    if (response.statusCode != HttpStatus.ok) {
      return const ApiResult.unhandledError('서버와 통신 중 에러가 발생했습니다.');
    }

    return ApiResult.fromJson(json, (_) {});
  }

  Future<ApiResult<Member>> signUp(
      String email, String password, String nickname) async {
    final uri = Uri.http(remoteUrl, '/api/v1/members/sign-up');
    final headers = {
      'Content-type': 'application/json; charset=UTF-8',
      'Accept-Language': 'ko'
    };

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
}
