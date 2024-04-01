import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModules,
  ...dependentModules,
  ...viewModels
];

List<SingleChildWidget> independentModules = [
  Provider<PlaceRepository>(create: (_) => PlaceRepository())
];

List<SingleChildWidget> dependentModules = [
  ProxyProvider<PlaceRepository, GetPlaceDetailUseCase>(
      update: (context, repository, _) => GetPlaceDetailUseCase(repository)),
  ProxyProvider<PlaceRepository, GetPlaceImageUseCase>(
      update: (context, repository, _) => GetPlaceImageUseCase(repository)),
  ProxyProvider2<GetPlaceDetailUseCase, GetPlaceImageUseCase, UseCases>(
      update: (context, getPlaceDetail, getPlaceImage, _) => UseCases(
          getPlaceDetail: getPlaceDetail, getPlaceImage: getPlaceImage))
];

List<SingleChildWidget> viewModels = [];
