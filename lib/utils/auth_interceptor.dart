import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';

class AuthInterceptor extends Interceptor {

  final SecureStorage secureStorage;

  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

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
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (!response.data.containsKey('errors')) {
      return super.onResponse(response, handler);
    }

    bool isValidAuth = _isValidResponse(response.data);

    if (isValidAuth) {
      return super.onResponse(response, handler);
    }

    final result = await secureStorage.findAuth();

    result.when(
        success: (auth) async {
          final result = await _renewAuth(auth.refreshToken);
          if (result == null) return secureStorage.deleteAuth();

          try {
            final dio = Dio();
            final retriedResponse = await dio.fetch(response.requestOptions);
            return handler.resolve(retriedResponse);
          } on DioException catch (e) {
            secureStorage.deleteAuth();
          }
        },
        error: (_) => secureStorage.deleteAuth());
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
