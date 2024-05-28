import 'package:yeohaeng_ttukttak/data/datasource/google_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/domain/model/profile.dart';
import 'package:yeohaeng_ttukttak/utils/api_error.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class AuthRepository {
  final RemoteAPI api;

  final SecureStorage secureStorage;

  final GoogleApi googleApi;

  AuthRepository(this.api, this.secureStorage, this.googleApi);

  Future<Result<Member, ApiError>> signIn(String email, String password) async {
    final result = await api.signIn(email, password);

    return result.when(
        success: (auth) async {
          await secureStorage.saveAuth(auth);
          final result = await api.findProfile();
          return result;
        },
        error: (error) => Result.error(error));
  }

  Future<Result<Member, ApiError>> signUp(String email, String password,
      String nickname, String verificationCode) async {
    final result =
        await api.signUp(email, password, nickname, verificationCode);

    return result.when(
        success: (member) async {
          final result = await api.signIn(email, password);

          return result.when(
              success: (auth) {
                secureStorage.saveAuth(auth);
                return Result.success(member);
              },
              error: (error) => Result.error(error));
        },
        error: (error) => Result.error(error));
  }

  Future<void> signOut() async {
    secureStorage.deleteAuth();
  }

  Future<Result<Member, ApiError>> findProfile() async {
    return api.findProfile();
  }

  Future<Result<void, ApiError>> verifyEmail(String email) {
    return api.verifyEmail(email);
  }

  Future<Result<Profile, String>> getProfile(String accessToken) {
    return googleApi.getProfile(accessToken);
  }

  Future<Result<Member, ApiError>> googleSignIn(
      Profile profile, String idToken) async {
    final result = await api.googleSignIn(profile, idToken);

    return result.when(
        success: (auth) async {
          await secureStorage.saveAuth(auth);
          return api.findProfile();
        },
        error: (error) => Result.error(error));
  }
}
