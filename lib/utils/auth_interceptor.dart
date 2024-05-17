import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';

import 'mutex.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage secureStorage;

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  final StreamController<MainUiEvent> _eventController;

  static final AsyncMutex _mutex = AsyncMutex();

  AuthInterceptor(this.secureStorage, this._eventController);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint('[REQ] wait ${options.uri}');
    await _mutex.lock();
    debugPrint('[REQ] end ${options.uri}');
    final result = await secureStorage.findAuth();
    result.whenOrNull(
        success: (auth) => options.headers
            .addAll({'Authorization': 'Bearer ${auth.accessToken}'}));

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (_mutex.isLocked) _mutex.unlock();
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    String? errorCode = err.response?.data['code'];

    if (errorCode == null || errorCode != 'INVALID_AUTHORIZATION') {
      return handler.reject(err);
    }

    debugPrint('[ERR] ${err.requestOptions.uri}');
    final result = await secureStorage.findAuth();

    result.when(success: (auth) async {
      try {
        final renewedAuth = await _renewAuth(auth.refreshToken);

        await secureStorage.saveAuth(renewedAuth);
        err.requestOptions.headers
            .addAll({'Authorization': 'Bearer ${renewedAuth.refreshToken}'});

        final dio = Dio();
        final retriedResponse = await dio.fetch(err.requestOptions);

        return handler.resolve(retriedResponse);
      } on DioException catch (e) {
        signOut();
        return handler.reject(err);
      } finally {
        if (_mutex.isLocked) _mutex.unlock();
      }
    }, error: (_) {
      if (_mutex.isLocked) _mutex.unlock();
      signOut();
      return handler.reject(err);
    });
  }

  void signOut() {
    // 서버 로그 아웃 API 호출 하기
    _eventController.add(const MainUiEvent.authorizationExpired());
  }

  Future<Auth> _renewAuth(String refreshToken) async {
    final dio = Dio();

    final response = await dio.post('$remoteUrl/api/v1/members/auth/renew',
        data: {'refreshToken': refreshToken});

    return Auth.fromJson(response.data['data']);
  }
}
