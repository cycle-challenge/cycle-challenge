
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

class GetPlaceDetailUseCase {

  final PlaceRepository repository;

  GetPlaceDetailUseCase(this.repository);

  Future<PlaceDetail> call(String googlePlaceID) async {
    return repository.getDetailInfo(googlePlaceID);
  }

}