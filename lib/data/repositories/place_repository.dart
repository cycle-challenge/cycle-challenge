import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/models/place/place_detail.dart';

class PlaceRepository {
  final String apiKey = const String.fromEnvironment("PLACE_API_KEY");

  Future<PlaceDetail> getDetailInfo(String googlePlaceId) async {

    Map<String, String> params = {
      'fields':
          'shortFormattedAddress,nationalPhoneNumber,regularOpeningHours,websiteUri',
      'key': apiKey,
      'languageCode': 'ko'
    };

    Uri uri = Uri.https(
        'places.googleapis.com', '/v1/places/$googlePlaceId', params);

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return PlaceDetail.of(json);
    } else {
      throw Exception(response.body);
    }
  }
}
