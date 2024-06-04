import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:yeohaeng_ttukttak/domain/model/global_state.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_state.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class LocalStorage {
  Future<Result<void, String>> addSearchHistory(PlaceSuggestion place) async =>
      _execute(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion");
        final box = Hive.box<PlaceSuggestion>("place_suggestion");

        await box.put(
            place.placeId, place.copyWith(modifiedAt: DateTime.now()));
      });

  Future<Result<void, String>> deleteSearchHistory(
          PlaceSuggestion place) async =>
      _execute(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion");
        final box = Hive.box<PlaceSuggestion>("place_suggestion");

        await box.delete(place.placeId);
        await box.close();
      });

  Future<Result<List<PlaceSuggestion>, String>> getSearchHistory() async =>
      _execute<List<PlaceSuggestion>>(() async {
        await Hive.openBox<PlaceSuggestion>("place_suggestion");
        final box = Hive.box<PlaceSuggestion>("place_suggestion");

        final places = box.values.toList();
        places.sort((a, b) => b.modifiedAt!.compareTo(a.modifiedAt!));
        return places.length > 20 ? places.sublist(0, 20) : places;
      });

  Future<Result<GlobalState, String>> getGlobalState() async =>
      _execute(() async {
        await Hive.openBox<GlobalState>('state');
        final box = Hive.box<GlobalState>('state');

        final state = box.get('global_state');

        if (state == null) return GlobalState();

        return state;
      });


  Future<Result<void, String>> saveGlobalState(GlobalState state) async =>
      _execute(() async {
        await Hive.openBox<GlobalState>('state');
        final box = Hive.box<GlobalState>('state');

        await box.put('global_state', state);
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
