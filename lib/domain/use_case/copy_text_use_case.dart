
import 'package:flutter/services.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CopyTextUseCase {

  Future<Result> call(String? text) async {
    if (text == null) return const Result.error("복사할 값이 없습니다.");

    try {
      await Clipboard.setData(ClipboardData(text: text));
      return const Result.success(null);
    } catch (e) {
      return const Result.error("복사에 실패했습니다.");
    }

  }

}