import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/datasource/kakao_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/local_stoarge.dart';
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_bookmarked_place_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_bookmarked_travel_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_location_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_nearby_places_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/load_marker_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/search/serch_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/auth_interceptor.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModules,
  ...dependentModules,
  ...viewModels
];

List<SingleChildWidget> independentModules = [
  Provider<CallPhoneUseCase>(create: (_) => CallPhoneUseCase()),
  Provider<CopyTextUseCase>(create: (_) => CopyTextUseCase()),
  Provider<LaunchUrlUseCase>(create: (_) => LaunchUrlUseCase()),
  Provider<GetMyLocationUseCase>(create: (_) => GetMyLocationUseCase()),
  Provider<LoadMarkerUseCase>(create: (_) => LoadMarkerUseCase()),
  Provider<SecureStorage>(
      create: (_) => SecureStorage(const FlutterSecureStorage())),
  Provider<StreamController<MainUiEvent>>(
      create: (_) => StreamController.broadcast()),
  Provider<KakaoApi>(create: (_) => KakaoApi()),
  Provider<LocalStorage>(create: (_) => LocalStorage())
];

List<SingleChildWidget> dependentModules = [
  Provider<Dio>(
      create: (context) => Dio()
        ..interceptors.add(AuthInterceptor(context.read<SecureStorage>(),
            context.read<StreamController<MainUiEvent>>()))),
  Provider<RemoteAPI>(create: (context) => RemoteAPI(context.read<Dio>())),
  Provider<PlaceRepository>(
      create: (context) =>
          PlaceRepository(context.read<RemoteAPI>(), context.read<KakaoApi>(), context.read<LocalStorage>())),
  Provider<TravelRepository>(
      create: (context) => TravelRepository(context.read<RemoteAPI>())),
  Provider<AddPlaceBookmarkUseCase>(
      create: (context) =>
          AddPlaceBookmarkUseCase(context.read<PlaceRepository>())),
  Provider<DeletePlaceBookmarkUseCase>(
      create: (context) =>
          DeletePlaceBookmarkUseCase(context.read<PlaceRepository>())),
  Provider<AddTravelBookmarkUseCase>(
      create: (context) =>
          AddTravelBookmarkUseCase(context.read<TravelRepository>())),
  Provider<DeleteTravelBookmarkUseCase>(
      create: (context) =>
          DeleteTravelBookmarkUseCase(context.read<TravelRepository>())),
  Provider<GetBookmarkedPlaceUseCase>(
      create: (context) =>
          GetBookmarkedPlaceUseCase(context.read<PlaceRepository>())),
  Provider<GetBookmarkedTravelUseCase>(
      create: (context) =>
          GetBookmarkedTravelUseCase(context.read<TravelRepository>())),
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
          loadMarker: context.read<LoadMarkerUseCase>(),
          addPlaceBookmarkUseCase: context.read<AddPlaceBookmarkUseCase>(),
          deletePlaceBookmarkUseCase:
              context.read<DeletePlaceBookmarkUseCase>(),
          addTravelBookmarkUseCase: context.read<AddTravelBookmarkUseCase>(),
          deleteTravelBookmarkUseCase:
              context.read<DeleteTravelBookmarkUseCase>(),
          getBookmarkedPlaceUseCase: context.read<GetBookmarkedPlaceUseCase>(),
          getBookmarkedTravelUseCase:
              context.read<GetBookmarkedTravelUseCase>()))
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<MapViewModel>(
      create: (context) => MapViewModel(context.read<UseCases>(),
          context.read<StreamController<MainUiEvent>>())),
  ChangeNotifierProvider<AuthViewModel>(
      create: (context) => AuthViewModel(context.read<AuthRepository>(),
          context.read<StreamController<MainUiEvent>>())),
  ChangeNotifierProvider<BookmarkViewModel>(
      create: (context) => BookmarkViewModel(context.read<UseCases>(),
          context.read<StreamController<MainUiEvent>>())),
  ChangeNotifierProvider<MainViewModel>(
      create: (context) =>
          MainViewModel(context.read<StreamController<MainUiEvent>>())),
  ChangeNotifierProvider<SearchViewModel>(
      create: (context) => SearchViewModel(context.read<PlaceRepository>(),
          context.read<StreamController<MainUiEvent>>()))
];
