
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:yeohaeng_ttukttak/domain/model/auth.dart';
import 'package:yeohaeng_ttukttak/utils/api_result.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class SecureStorage {

  final FlutterSecureStorage storage;

  SecureStorage(this.storage);

  Future<Result<String>> findRefreshToken() async {
    final String? json = await storage.read(key: 'RT');

    if (json == null) return const Result.error('');

    return Result.success(json);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await storage.write(key: 'RT', value: refreshToken);
  }

  Future<Result<Auth>> findAuth() async {
    final value = await storage.read(key: 'auth');

    if (value == null) return const Result.error('');

    final json = jsonDecode(value);

    return Result.success(Auth.fromJson(json));
  }

  void saveAuth(Auth auth) {
     storage.write(key: 'auth', value: jsonEncode(auth));
  }

  void deleteAuth() {
    storage.delete(key: 'auth');
  }

}