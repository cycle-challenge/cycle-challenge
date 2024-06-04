
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class SecureStorage {

  final FlutterSecureStorage storage;

  SecureStorage(this.storage);

  Future<Result<Auth, void>> findAuth() async {
    final value = await storage.read(key: 'auth');

    if (value == null) return const Result.error(null);

    final json = jsonDecode(value);

    return Result.success(Auth.fromJson(json));
  }

  Future<void> saveAuth(Auth auth) async {
     await storage.write(key: 'auth', value: jsonEncode(auth));
  }

  Future<void> deleteAuth() async {
    await storage.delete(key: 'auth');
  }

  Future<void> saveOauthToken(String token) async {
    await storage.write(key: 'oauth_token', value: token);
  }

  Future<Result<String, void>> findOAuthToken() async {
    final value = await storage.read(key: 'oauth_token');

    if (value == null) return const Result.error(null);
    return Result.success(value);
  }

}