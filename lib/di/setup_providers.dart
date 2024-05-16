import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/datasource/google_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/local_stoarge.dart';
import 'package:yeohaeng_ttukttak/data/datasource/remote_api.dart';
import 'package:yeohaeng_ttukttak/data/datasource/secure_storage.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/data/repositories/visit_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/calculate_bound_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/calculate_distance_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/create_place_review_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/create_travel_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/create_visits_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_place_images_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_place_reviews_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_place_travels_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_travels_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/modify_travel_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_bookmarked_place_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_bookmarked_travel_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_location_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_nearby_travels_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_travel_visits_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/load_marker_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_view_model.dart';
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
  Provider<CalculateDistanceUseCase>(create: (_) => CalculateDistanceUseCase()),
  Provider<CalculateBoundUseCase>(create: (_) => CalculateBoundUseCase()),
  Provider<SecureStorage>(
      create: (_) => SecureStorage(const FlutterSecureStorage())),
  Provider<StreamController<MainUiEvent>>(
      create: (_) => StreamController.broadcast()),
  Provider<GoogleApi>(create: (_) => GoogleApi()),
  Provider<LocalStorage>(create: (_) => LocalStorage())
];

List<SingleChildWidget> dependentModules = [
  Provider<Dio>(
      create: (context) => Dio()
        ..interceptors.add(AuthInterceptor(context.read<SecureStorage>(),
            context.read<StreamController<MainUiEvent>>()))),
  Provider<RemoteAPI>(create: (context) => RemoteAPI(context.read<Dio>())),
  Provider<PlaceRepository>(
      create: (context) => PlaceRepository(context.read<RemoteAPI>(),
          context.read<LocalStorage>(), context.read<GoogleApi>())),
  Provider<TravelRepository>(
      create: (context) => TravelRepository(context.read<RemoteAPI>())),
  Provider<VisitRepository>(
      create: (context) => VisitRepository(context.read<RemoteAPI>())),
  Provider<AddPlaceBookmarkUseCase>(
      create: (context) =>
          AddPlaceBookmarkUseCase(context.read<PlaceRepository>())),
  Provider<FindPlaceReviewsUseCase>(
      create: (context) =>
          FindPlaceReviewsUseCase(context.read<PlaceRepository>())),
  Provider<FindPlaceTravelsUseCase>(
      create: (context) =>
          FindPlaceTravelsUseCase(context.read<PlaceRepository>())),
  Provider<GetBookmarkedPlaceUseCase>(
      create: (context) =>
          GetBookmarkedPlaceUseCase(context.read<PlaceRepository>())),
  Provider<FindPlaceImagesUseCase>(
      create: (context) =>
          FindPlaceImagesUseCase(context.read<PlaceRepository>())),
  Provider<DeletePlaceBookmarkUseCase>(
      create: (context) =>
          DeletePlaceBookmarkUseCase(context.read<PlaceRepository>())),
  Provider<CreatePlaceReviewUseCase>(
      create: (context) =>
          CreatePlaceReviewUseCase(context.read<PlaceRepository>())),
  Provider<AddTravelBookmarkUseCase>(
      create: (context) =>
          AddTravelBookmarkUseCase(context.read<TravelRepository>())),
  Provider<DeleteTravelBookmarkUseCase>(
      create: (context) =>
          DeleteTravelBookmarkUseCase(context.read<TravelRepository>())),
  Provider<GetBookmarkedTravelUseCase>(
      create: (context) =>
          GetBookmarkedTravelUseCase(context.read<TravelRepository>())),
  Provider<GetMyTravelsUseCase>(
      create: (context) =>
          GetMyTravelsUseCase(context.read<TravelRepository>())),
  Provider<CreateTravelUseCase>(
      create: (context) =>
          CreateTravelUseCase(context.read<TravelRepository>())),
  Provider<ModifyTravelUseCase>(
      create: (context) =>
          ModifyTravelUseCase(context.read<TravelRepository>())),
  Provider<CreateVisitsUseCase>(
      create: (context) =>
          CreateVisitsUseCase(context.read<VisitRepository>())),
  Provider<GetTravelVisitsUseCase>(
      create: (context) =>
          GetTravelVisitsUseCase(context.read<VisitRepository>())),
  Provider<AuthRepository>(
      create: (context) => AuthRepository(
          context.read<RemoteAPI>(), context.read<SecureStorage>())),
  ProxyProvider<PlaceRepository, GetPlaceDetailUseCase>(
      update: (context, repository, _) => GetPlaceDetailUseCase(repository)),
  ProxyProvider<PlaceRepository, GetPlaceImageUseCase>(
      update: (context, repository, _) => GetPlaceImageUseCase(repository)),
  Provider<GetNearbyTravelsUseCase>(
      create: (context) =>
          GetNearbyTravelsUseCase(context.read<TravelRepository>())),
  Provider<UseCases>(
      create: (context) => UseCases(
          getPlaceDetail: context.read<GetPlaceDetailUseCase>(),
          getPlaceImage: context.read<GetPlaceImageUseCase>(),
          callPhone: context.read<CallPhoneUseCase>(),
          copyText: context.read<CopyTextUseCase>(),
          launchURL: context.read<LaunchUrlUseCase>(),
          getNearbyTravels: context.read<GetNearbyTravelsUseCase>(),
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
              context.read<GetBookmarkedTravelUseCase>(),
          calculateDistanceUseCase: context.read<CalculateDistanceUseCase>(),
          createTravelUseCase: context.read<CreateTravelUseCase>(),
          modifyTravelUseCase: context.read<ModifyTravelUseCase>(),
          getTravelVisitsUseCase: context.read<GetTravelVisitsUseCase>(),
          createVisitsUseCase: context.read<CreateVisitsUseCase>(),
          calculateBoundUseCase: context.read<CalculateBoundUseCase>(),
          getMyTravelsUseCase: context.read<GetMyTravelsUseCase>(),
          findPlaceReviewsUseCase: context.read<FindPlaceReviewsUseCase>(),
          findPlaceTravelsUseCase: context.read<FindPlaceTravelsUseCase>(),
          findPlaceImagesUseCase: context.read<FindPlaceImagesUseCase>(),
          createPlaceReviewUseCase: context.read<CreatePlaceReviewUseCase>()))
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
          context.read<StreamController<MainUiEvent>>())),
  ChangeNotifierProvider<ProfileViewModel>(
      create: (context) => ProfileViewModel(
          context.read<StreamController<MainUiEvent>>(),
          context.read<UseCases>()))
];
