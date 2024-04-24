import 'package:geolocator/geolocator.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetMyLocationUseCase {
  Future<Result<(double latitude, double longitude), String>> call() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return const Result.error('위치 서비스가 비활성화 되었습니다.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const Result.error('위치 권한이 없습니다. 위치 권한을 활성화해 주세요.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return const Result.error('위치 권한을 요청할 수 없습니다. 위치 권한이 부여되었는지 확인해주세요.');
    }

    final position = await Geolocator.getCurrentPosition();

    return Result.success((position.latitude, position.longitude));
  }
}
