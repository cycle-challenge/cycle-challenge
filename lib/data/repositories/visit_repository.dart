import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';

class VisitRepository {
  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  Future<VisitModel> get(double latitude, double longitude, int radius) async {
    Map<String, String> params = {
      'location': '$latitude,$longitude',
      'radius': radius.toString(),
    };

    Uri uri = Uri.http(remoteUrl, '/api/v1/visits/search', params);

    http.Response response = await http
        .get(uri, headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return VisitModel.of(json["data"]);
    } else {
      throw Exception(response.body);
    }
  }
}
