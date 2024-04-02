import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_location_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_nearby_places_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModules,
  ...dependentModules,
  ...viewModels
];

List<SingleChildWidget> independentModules = [
  Provider<PlaceRepository>(create: (_) => PlaceRepository()),
  Provider<CallPhoneUseCase>(create: (_) => CallPhoneUseCase()),
  Provider<CopyTextUseCase>(create: (_) => CopyTextUseCase()),
  Provider<LaunchUrlUseCase>(create: (_) => LaunchUrlUseCase()),
  Provider<GetMyLocationUseCase>(create: (_) => GetMyLocationUseCase()),
];

List<SingleChildWidget> dependentModules = [
  ProxyProvider<PlaceRepository, GetPlaceDetailUseCase>(
      update: (context, repository, _) => GetPlaceDetailUseCase(repository)),
  ProxyProvider<PlaceRepository, GetPlaceImageUseCase>(
      update: (context, repository, _) => GetPlaceImageUseCase(repository)),
  ProxyProvider<PlaceRepository, GetNearbyPlacesUseCase>(
      update: (_, repository, __) => GetNearbyPlacesUseCase(repository)),
  Provider<UseCases>(create: (context) => UseCases(
      getPlaceDetail: context.read<GetPlaceDetailUseCase>(),
      getPlaceImage: context.read<GetPlaceImageUseCase>(),
      callPhone: context.read<CallPhoneUseCase>(),
      copyText: context.read<CopyTextUseCase>(),
      launchURL: context.read<LaunchUrlUseCase>(),
      getNearbyPlaces: context.read<GetNearbyPlacesUseCase>(),
      getMyLocation: context.read<GetMyLocationUseCase>()))
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MapViewModel>(
      create: (context) => MapViewModel(context.read<UseCases>()))
];
