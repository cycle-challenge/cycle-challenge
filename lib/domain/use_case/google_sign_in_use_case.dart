import 'dart:io';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/oauth_client_id.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GoogleSignInUseCase {
  final appAuth = const FlutterAppAuth();
  final AuthRepository authRepository;

  GoogleSignInUseCase(this.authRepository);

  final _CLIENT_ID = OAuthClientId.CLIENT_ID;

  Future<Result<Member, String>> call() async {
    if (_CLIENT_ID == null) return const Result.error('지원하지 않는 플랫폼입니다.');

    final response = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest('$_CLIENT_ID.apps.googleusercontent.com',
            'com.googleusercontent.apps.$_CLIENT_ID:/oauthredirect',
            promptValues: ['select_account'],
            issuer: 'https://accounts.google.com',
            scopes: [
              'https://www.googleapis.com/auth/userinfo.profile',
              'https://www.googleapis.com/auth/user.gender.read',
              'https://www.googleapis.com/auth/user.birthday.read',
              'https://www.googleapis.com/auth/user.emails.read'
            ]));

    if (response == null) {
      return const Result.error('소셜 로그인에 실패했습니다.');
    }

    final AuthorizationTokenResponse(:idToken, :accessToken, :refreshToken) = response;

    if (accessToken == null || idToken == null || refreshToken == null) {
      return const Result.error('소셜 로그인에 실패했습니다.');
    }

    final result = await authRepository.getProfile(accessToken);

    return result.when(
        success: (profile) async {
          final result = await authRepository.googleSignIn(profile, idToken, refreshToken);

          return result.when(
              success: (member) => Result.success(member.copyWith()),
              error: (error) => error.maybeWhen(
                  error: (_, message) => Result.error(message),
                  orElse: () => const Result.error('알 수 없는 오류가 발생했습니다.')));
        },
        error: (error) => Result.error(error));
  }
}
