
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class CallPhoneUseCase {

  Future<Result> call(String? phoneNumber) async {

    if (phoneNumber == null) {
      return const Result.error("제공된 전화번화가 없습니다.");
    }

    phoneNumber = Platform.isIOS
        ? phoneNumber.replaceAll("-", "")
        : phoneNumber;

    if (!await canLaunch("tel:$phoneNumber")) {
      return const Result.error("전화를 걸 수 없습니다. 올바른 권한이 있는지 확인해주세요.");
    }
    await launch("tel:$phoneNumber");

    return const Result.success(null);
  }

}