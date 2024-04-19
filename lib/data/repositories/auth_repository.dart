import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';

class AuthRepository {
  final RemoteAPI api;

  final SecureStorage secureStorage;

  AuthRepository(this.api, this.secureStorage);

  Future<ApiResult<Member>> signIn(String email, String password) async {
    final result = await api.signIn(email, password);

    return result.when(
        success: (auth) {
          secureStorage.saveAuth(auth);
          return api.findProfile(accessToken: auth.accessToken);
        },
        error: (errors) => ApiResult.error(errors),
        unhandledError: (message) => ApiResult.unhandledError(message));
  }

  Future<ApiResult<Member>> signUp(
      String email, String password, String nickname, String verificationCode) async {
    final result = await api.signUp(email, password, nickname, verificationCode);

    return result.when(
        success: (member) async {
          final result = await api.signIn(email, password);

          return result.when(
              success: (auth) {
                secureStorage.saveAuth(auth);
                return ApiResult.success(member);
              },
              error: (errors) => ApiResult.error(errors),
              unhandledError: (message) => ApiResult.unhandledError(message));
        },
        error: (errors) => ApiResult.error(errors),
        unhandledError: (message) => ApiResult.unhandledError(message));
  }

  void signOut() {
    secureStorage.deleteAuth();
  }

  Future<ApiResult<void>> verifyEmail(String email) {
    return api.verifyEmail(email);
  }

  Future<ApiResult<Member>> findProfile() async {
    // 1. 인증 정보가 저장 되었는지 조회
    final result = await secureStorage.findAuth();

    return result.when(
        success: (auth) async {
          // 2-1. 성공 시 저장된 인증 정보로 요청
          final result = await api.findProfile(accessToken: auth.accessToken);

          return result.when(
              // 3-1. 성공
              success: (member) => ApiResult.success(member),
              error: (_) async {
                // 3-2. 인증 정보 만료 시, Access Token 재발급 시도
                final result =
                    await api.renewAuth(refreshToken: auth.refreshToken);

                return result.when(
                    // 4-1. 재발급 성공, 발급된 인증 정보로 재 요청
                    success: (auth) async =>
                        api.findProfile(accessToken: auth.accessToken),
                    // 4-2. 재발급 실패 시, Refresh Token 만료로 재 로그인
                    error: (_) => const ApiResult.unhandledError(
                        '인증 정보가 만료되었습니다. 다시 로그인해 주세요.'),
                    // 4-3. 서버 통신 실패 시 메세지 반환
                    unhandledError: (message) =>
                        ApiResult.unhandledError(message));
              },
              // 3-3. 서버 통신 실패 시 메세지 반환
              unhandledError: (message) => ApiResult.unhandledError(message));
        },
        error: (_) =>
            // 2-2. 저장된 인증 정보가 없는 경우 재 로그인
            const ApiResult.unhandledError('인증 정보가 만료되었습니다. 다시 로그인해 주세요.'));
  }
}
