import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';

class GetPlaceImageUseCase {
  final PlaceRepository repository;

  GetPlaceImageUseCase(this.repository);

  Future<PageModel<ImageModel>> call(
      int placeID, int page, int pageSize) async {
    return repository.getImages(placeID, page, pageSize);
  }
}
