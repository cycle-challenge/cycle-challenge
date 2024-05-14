
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class FindPlaceImagesUseCase {

  final PlaceRepository _placeRepository;

  FindPlaceImagesUseCase(this._placeRepository);

  Future<Result<List<Image>, String>> call(int placeId) async {
    return _placeRepository.findImages(placeId);
  }
  
}