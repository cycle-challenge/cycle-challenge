import 'package:yeohaeng_ttukttak/domain/use_case/add_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/delete_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_place_bookmarks.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/find_travel_bookmarks.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_my_location_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_nearby_places_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_detail_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/get_place_image_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/launch_url_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/load_marker_use_case.dart';

class UseCases {
  final GetPlaceDetailUseCase getPlaceDetail;
  final GetPlaceImageUseCase getPlaceImage;
  final CallPhoneUseCase callPhone;
  final CopyTextUseCase copyText;
  final LaunchUrlUseCase launchURL;
  final GetNearbyPlacesUseCase getNearbyPlaces;
  final GetMyLocationUseCase getMyLocation;
  final LoadMarkerUseCase loadMarker;
  final AddPlaceBookmarkUseCase addPlaceBookmarkUseCase;
  final DeletePlaceBookmarkUseCase deletePlaceBookmarkUseCase;
  final AddTravelBookmarkUseCase addTravelBookmarkUseCase;
  final FindBookmarksUseCase findBookmarksUseCase;
  final DeleteTravelBookmarkUseCase deleteTravelBookmarkUseCase;

  UseCases(
      {required this.getPlaceDetail,
      required this.getPlaceImage,
      required this.callPhone,
      required this.copyText,
      required this.launchURL,
      required this.getNearbyPlaces,
      required this.getMyLocation,
      required this.loadMarker,
      required this.addPlaceBookmarkUseCase,
      required this.deletePlaceBookmarkUseCase,
      required this.addTravelBookmarkUseCase,
      required this.deleteTravelBookmarkUseCase,
      required this.findBookmarksUseCase});
}
