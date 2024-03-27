import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';

class TravelRepository {
  final String remoteUrl = const String.fromEnvironment("REMOTE_URL");

  Future<List<DailyVisitSummary>> findVisits(int id) async {
    Uri uri = Uri.http(remoteUrl, '/api/v1/travels/$id/visits');

    Response response = await get(uri,
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
      return List.of(json["data"])
          .map((e) => DailyVisitSummary.of(e))
          .toList();
    } else {
      throw Exception(response.body);
    }
  }
}
