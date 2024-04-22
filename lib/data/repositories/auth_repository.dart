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
        success: (auth) async {
          await secureStorage.saveAuth(auth);
          final result = await api.findProfile();
          return result;
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

  Future<ApiResult<Member>> findProfile() async {
    return api.findProfile();
  }

  Future<ApiResult<void>> verifyEmail(String email) {
    return api.verifyEmail(email);
  }
}