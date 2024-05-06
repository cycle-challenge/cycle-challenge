import 'package:yeohaeng_ttukttak/domain/use_case/add_place_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/add_travel_bookmark_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/calculate_bound_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/calculate_distance_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/call_phone_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/copy_text_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/create_travel_use_case.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/create_visits_use_case.dart';
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

class UseCases {
  final GetPlaceDetailUseCase getPlaceDetail;
  final GetPlaceImageUseCase getPlaceImage;
  final CallPhoneUseCase callPhone;
  final CopyTextUseCase copyText;
  final LaunchUrlUseCase launchURL;
  final GetNearbyTravelsUseCase getNearbyTravels;
  final GetMyLocationUseCase getMyLocation;
  final LoadMarkerUseCase loadMarker;
  final AddPlaceBookmarkUseCase addPlaceBookmarkUseCase;
  final DeletePlaceBookmarkUseCase deletePlaceBookmarkUseCase;
  final AddTravelBookmarkUseCase addTravelBookmarkUseCase;
  final DeleteTravelBookmarkUseCase deleteTravelBookmarkUseCase;
  final GetBookmarkedPlaceUseCase getBookmarkedPlaceUseCase;
  final GetBookmarkedTravelUseCase getBookmarkedTravelUseCase;
  final CalculateDistanceUseCase calculateDistanceUseCase;
  final CreateTravelUseCase createTravelUseCase;
  final ModifyTravelUseCase modifyTravelUseCase;
  final CreateVisitsUseCase createVisitsUseCase;
  final GetTravelVisitsUseCase getTravelVisitsUseCase;
  final CalculateBoundUseCase calculateBoundUseCase;
  final GetMyTravelsUseCase getMyTravelsUseCase;

  UseCases({
    required this.getPlaceDetail,
    required this.getPlaceImage,
    required this.callPhone,
    required this.copyText,
    required this.launchURL,
    required this.getNearbyTravels,
    required this.getMyLocation,
    required this.loadMarker,
    required this.addPlaceBookmarkUseCase,
    required this.deletePlaceBookmarkUseCase,
    required this.addTravelBookmarkUseCase,
    required this.deleteTravelBookmarkUseCase,
    required this.getBookmarkedPlaceUseCase,
    required this.getBookmarkedTravelUseCase,
    required this.calculateDistanceUseCase,
    required this.createTravelUseCase,
    required this.modifyTravelUseCase,
    required this.getTravelVisitsUseCase,
    required this.createVisitsUseCase,
    required this.calculateBoundUseCase,
    required this.getMyTravelsUseCase
  });
}
