
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class FindPlaceTravelsUseCase {

  final PlaceRepository _placeRepository;

  FindPlaceTravelsUseCase(this._placeRepository);

  Future<Result<List<Travel>, String>> call(int placeId) async {
    return _placeRepository.findTravels(placeId);
  }

}