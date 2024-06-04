import 'dart:io';

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GoogleSignInUseCase {

  final AuthRepository authRepository;
  final remoteUrl = const String.fromEnvironment("REMOTE_URL");

  GoogleSignInUseCase(this.authRepository);

  Future<Result<Member, String>> call() async {

    final uri = Uri.https('accounts.google.com', '/o/oauth2/v2/auth', {
      'client_id':
          '951324022006-eigc5h6tj71rm2v31eqr5u0v07cbmpn1.apps.googleusercontent.com',
      'response_type': 'code',
      'access_type': 'offline',
      'prompt': 'consent',
      'redirect_uri': 'http://172.30.1.25.nip.io:8080/api/v1/members/sign-in/google',
      'scope': 'https://www.googleapis.com/auth/userinfo.email'
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
