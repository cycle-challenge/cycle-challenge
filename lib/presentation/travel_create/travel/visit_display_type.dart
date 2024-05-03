
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';

part 'visit_display_type.freezed.dart';

@freezed
abstract class VisitDisplayType with _$VisitDisplayType {
  const factory VisitDisplayType.label(DateTime dateTime) = _Label;
  const factory VisitDisplayType.item(Visit visit) = _Visit;
}