import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class LocalStorage {

  Future<Result<void, String>> addSearchHistory(PlaceSuggestion place) async =>
      _execute(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion_history");
        final box = Hive.box<PlaceSuggestion>("place_suggestion_history");

        await box.put(place.googlePlaceId, place);
      });

  Future<Result<void, String>> deleteSearchHistory(PlaceSuggestion place) async =>
      _execute(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion_history");
        final box = Hive.box<PlaceSuggestion>("place_suggestion_history");

        await box.delete(place.googlePlaceId);
        await box.close();
      });

  Future<Result<List<PlaceSuggestion>, String>> getSearchHistory() async =>
      _execute<List<PlaceSuggestion>>(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion_history");
        final box = Hive.box<PlaceSuggestion>("place_suggestion_history");
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
