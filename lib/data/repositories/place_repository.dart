import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/models/page_model.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

class PlaceRepository {

  final String apiKey = const String.fromEnvironment("PLACE_API_KEY");
  final String remoteUrl = const String.fromEnvironment("REMOTE_HOST");

  Future<List<PlaceModel>> findNearby(
      double latitude, double longitude, int radius) async {
    Map<String, String> params = {
      'location': '$latitude,$longitude',
      'radius': radius.toString(),
    };

    Uri uri = Uri.http(remoteUrl, '/api/v1/places/nearby', params);

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return List.of(json["data"])
          .map((place) => PlaceModel.of(place))
          .toList();
    } else {
      throw Exception(response.body);
    }
  }

  Future<PlaceDetail> getDetailInfo(String googlePlaceId) async {
    Map<String, String> params = {
      'fields':
          'shortFormattedAddress,nationalPhoneNumber,regularOpeningHours,websiteUri',
      'key': apiKey,
      'languageCode': 'ko'
    };

    Uri uri =
        Uri.https('places.googleapis.com', '/v1/places/$googlePlaceId', params);

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return PlaceDetail.of(json);
    } else {
      throw Exception(response.body);
    }
  }

  Future<PageModel<ImageModel>> getImages(
      int id, int page, int pageSize) async {
    Map<String, String> params = {
      'page': page.toString(),
      'pageSize': pageSize.toString()
    };

    Uri uri = Uri.http(remoteUrl, '/api/v1/places/$id/images', params);

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return PageModel<ImageModel>.of(ImageModel.of, json['data']);
    } else {
      throw Exception(response.body);
    }
  }
}
