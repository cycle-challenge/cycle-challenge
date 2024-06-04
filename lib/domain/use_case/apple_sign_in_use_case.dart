import 'dart:io';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/oauth_client_id.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class AppleSignInUseCase {
  final AuthRepository authRepository;
  final remoteUrl = const String.fromEnvironment("REMOTE_URL");

  AppleSignInUseCase(this.authRepository);

  Future<Result<Member, String>> call() async {
    final uri = Uri.https('appleid.apple.com', '/auth/authorize', {
      'client_id': 'app.yeohaeng.ttukttak.com',
      'response_mode': 'form_post',
      'response_type': 'code',
      'redirect_uri':  '$remoteUrl/api/v1/members/sign-in/apple',
      'scope': 'email'
    });

    final response = await FlutterWebAuth2.authenticate(
        url: uri.toString(), callbackUrlScheme: 'com.yeohaeng.ttukttak.app');

    final params = Uri.parse(response).queryParameters;

    if (params['status'] == 'fail') return Result.error(params['message']!);

    await authRepository.saveAuth(Auth(
        accessToken: params['access-token']!,
        refreshToken: params['refresh-token']!));

    final result = await authRepository.findProfile();

    return result.when(
        success: (member) => Result.success(member),
        error: (error) => Result.error(
            error.maybeWhen(error: (_, message) => message, orElse: () => '')));
  }
}
