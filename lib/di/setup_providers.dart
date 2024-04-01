import 'package:provider/single_child_widget.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';

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
];

List<SingleChildWidget> dependentModules = [
  ProxyProvider<PlaceRepository, GetPlaceDetailUseCase>(
      update: (context, repository, _) => GetPlaceDetailUseCase(repository)),
  ProxyProvider<PlaceRepository, GetPlaceImageUseCase>(
      update: (context, repository, _) => GetPlaceImageUseCase(repository)),
  ProxyProvider5<GetPlaceDetailUseCase, GetPlaceImageUseCase, CallPhoneUseCase,
          CopyTextUseCase, LaunchUrlUseCase, UseCases>(
      update: (context, getPlaceDetail, getPlaceImage, callPhone, copyText,
              launchUrl, _) =>
          UseCases(
              getPlaceDetail: getPlaceDetail,
              getPlaceImage: getPlaceImage,
              callPhone: callPhone,
              copyText: copyText,
              launchURL: launchUrl))
];

List<SingleChildWidget> viewModels = [];
