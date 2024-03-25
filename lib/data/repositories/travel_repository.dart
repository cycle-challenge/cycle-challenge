import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';

class TravelRepository {
  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  Future<List<TravelModel>> get(double latitude, double longitude, int radius) async {
    Map<String, String> params = {
      'location': '$latitude,$longitude',
      'radius': radius.toString(),
    };

    Uri uri = Uri.http(remoteUrl, '/api/v1/visits/search', params);

    http.Response response = await http
        .get(uri, headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return List.of(json["data"]).map((travel) => TravelModel.of(travel)).toList();
    } else {
      throw Exception(response.body);
    }
  }
}
