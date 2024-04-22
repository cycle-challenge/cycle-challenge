import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/utils/auth_interceptor_event.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage secureStorage;

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  final StreamController<AuthInterceptorEvent> _eventController = StreamController.broadcast();
  Stream<AuthInterceptorEvent> get steam => _eventController.stream;

  AuthInterceptor(this.secureStorage);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    final result = await secureStorage.findAuth();

    result.when(
        success: (auth) => options.headers
            .addAll({'Authorization': 'Bearer ${auth.accessToken}'}),
        error: (_) {});

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    String? errorCode = err.response?.data['code'];

    if (errorCode == null || errorCode != 'INVALID_AUTHORIZATION') {
      return handler.reject(err);
    }

    final result = await secureStorage.findAuth();

    result.when(
        success: (auth) async {
          final result = await _renewAuth(auth.refreshToken);
          if (result == null) return secureStorage.deleteAuth();

          try {
            final dio = Dio();
            final retriedResponse = await dio.fetch(err.requestOptions);

            return handler.resolve(retriedResponse);
          } on DioException catch (e) {
            signOut();
          }
        },
        error: (_) => signOut());
  }

  void signOut() {
    secureStorage.deleteAuth();
    // 서버 로그 아웃 API 호출 하기
    _eventController.add(const AuthInterceptorEvent.authorizationExpired());
  }

  bool _isValidResponse(Map<String, dynamic> data) {
    for (var error in List.of(data['errors'])) {
      final status = error['status'];
      if (status == HttpStatus.unauthorized || status == HttpStatus.forbidden) {
        return false;
      }
    }
    return true;
  }

  Future<Auth?> _renewAuth(String refreshToken) async {
    final dio = Dio();

    final response = await dio.post('$remoteUrl/api/v1/members/auth/renew',
        data: {'refreshToken': refreshToken});

    if (response.statusCode == 200) return null;

    if (!_isValidResponse(response.data)) return null;

    return Auth.fromJson(response.data);
  }
}
