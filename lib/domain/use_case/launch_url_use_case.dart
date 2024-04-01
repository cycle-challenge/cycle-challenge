import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class LaunchUrlUseCase {

  Future<Result> call(String? url) async {
    
    try {
      if (url == null) {
        return const Result.error("웹사이트 주소가 없습니다.");
      }

      Uri uri = Uri.parse(url);
      if (!await launchUrl(uri)) {
        return const Result.error("브라우저를 실행할 수 없습니다.");
      }
      return const Result.success(null);

    } catch (e) {
      if (e is FormatException) {
        return const Result.error("올바르지 않은 주소입니다.");
      } 
      return const Result.error("알 수 없는 오류가 발생했습니다.");
    }

  }

}