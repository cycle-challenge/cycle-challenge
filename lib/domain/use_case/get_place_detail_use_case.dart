import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class GetPlaceDetailUseCase {
  final PlaceRepository repository;

  GetPlaceDetailUseCase(this.repository);

  Future<Result<PlaceDetail, String>> call(String googlePlaceID) async {
    return repository.getDetail(googlePlaceID);
  }
}
