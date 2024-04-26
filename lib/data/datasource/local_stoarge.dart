import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class LocalStorage {

  Future<Result<void, String>> addSearchHistory(Place place) async =>
      _execute(() async {
        await Hive.openBox<Place>("place_search_history");
        final box = Hive.box<Place>("place_search_history");

        await box.put(place.kakaoId, place);
      });

  Future<Result<void, String>> deleteSearchHistory(Place place) async =>
      _execute(() async {
        await Hive.openBox<Place>("place_search_history");
        final box = Hive.box<Place>("place_search_history");

        await box.delete(place.kakaoId);
        await box.close();
      });

  Future<Result<List<Place>, String>> getSearchHistory() async =>
      _execute<List<Place>>(() async {
        await Hive.openBox<Place>("place_search_history");
        final box = Hive.box<Place>("place_search_history");
        return box.values.toList();
      });

  FutureOr<Result<T, String>> _execute<T>(
      FutureOr<T> Function() operation) async {
    try {
      T result = await operation();
      return Result.success(result);
    } on HiveError catch (e) {
      debugPrint('[HIVE_ERROR] ${e.message}');
      return const Result.error('저장소에 연결할 수 없습니다.');
    }
  }
}
