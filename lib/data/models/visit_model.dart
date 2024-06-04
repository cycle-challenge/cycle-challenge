import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';

class DailyVisitSummary {
  final int _dayOfTravel;

  final List<Visit> _visits;

  final BoundModel _bound;

  int get dayOfTravel => _dayOfTravel;

  List<Visit> get visits => _visits;

  BoundModel get bound => _bound;

  DailyVisitSummary(this._dayOfTravel, this._visits, this._bound);

  factory DailyVisitSummary.of(Map<String, dynamic> json) {
    return DailyVisitSummary(
        json["dayOfTravel"],
        List.of(json["visits"]).map((e) => Visit.fromJson(e)).toList(),
        BoundModel.of(json["bound"]));
  }
}
