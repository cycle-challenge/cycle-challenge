
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';

part 'travel_group_item.freezed.dart';

@freezed
abstract class TravelGroupItem with _$TravelGroupItem {
  const factory TravelGroupItem.label(DateTime? date) = _Label;
  const factory TravelGroupItem.visit(Visit visit) = _Visit;
}