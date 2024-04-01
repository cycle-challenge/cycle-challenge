import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';

class UseCases {
  final GetPlaceDetailUseCase getPlaceDetail;
  final GetPlaceImageUseCase getPlaceImage;
  final CallPhoneUseCase callPhone;
  final CopyTextUseCase copyText;
  final LaunchUrlUseCase launchURL;

  UseCases(
      {required this.getPlaceDetail,
      required this.getPlaceImage,
      required this.callPhone,
      required this.copyText,
      required this.launchURL});
}
