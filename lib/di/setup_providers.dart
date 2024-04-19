import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_location_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_nearby_places_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/load_marker_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/auth_interceptor.dart';

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
  Provider<LoadMarkerUseCase>(create: (_) => LoadMarkerUseCase()),
  Provider<SecureStorage>(
      create: (_) => SecureStorage(const FlutterSecureStorage()))
];

List<SingleChildWidget> dependentModules = [
  Provider<Dio>(
      create: (context) => Dio()
        ..interceptors.add(AuthInterceptor(context.read<SecureStorage>()))),
  Provider<RemoteAPI>(create: (context) => RemoteAPI(context.read<Dio>())),
  Provider<AuthRepository>(
      create: (context) => AuthRepository(
          context.read<RemoteAPI>(), context.read<SecureStorage>())),
  ProxyProvider<PlaceRepository, GetPlaceDetailUseCase>(
      update: (context, repository, _) => GetPlaceDetailUseCase(repository)),
  ProxyProvider<PlaceRepository, GetPlaceImageUseCase>(
      update: (context, repository, _) => GetPlaceImageUseCase(repository)),
  ProxyProvider<PlaceRepository, GetNearbyPlacesUseCase>(
      update: (_, repository, __) => GetNearbyPlacesUseCase(repository)),
  Provider<UseCases>(
      create: (context) => UseCases(
          getPlaceDetail: context.read<GetPlaceDetailUseCase>(),
          getPlaceImage: context.read<GetPlaceImageUseCase>(),
          callPhone: context.read<CallPhoneUseCase>(),
          copyText: context.read<CopyTextUseCase>(),
          launchURL: context.read<LaunchUrlUseCase>(),
          getNearbyPlaces: context.read<GetNearbyPlacesUseCase>(),
          getMyLocation: context.read<GetMyLocationUseCase>(),
          loadMarker: context.read<LoadMarkerUseCase>()))
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MapViewModel>(
      create: (context) => MapViewModel(context.read<UseCases>())),
  ChangeNotifierProvider<AuthViewModel>(
      create: (context) => AuthViewModel(context.read<AuthRepository>())),
];
