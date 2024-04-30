import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
@HiveType(typeId: 1)
class Place with _$Place {
  factory Place(
      {
        @HiveField(0) required String name,
        @HiveField(1) required double latitude,
        @HiveField(2) required double longitude,
        @HiveField(3) required int kakaoId,
        @HiveField(4, defaultValue: -1) int? id,
        @HiveField(5, defaultValue: 0.0) double? distance,
        @HiveField(6, defaultValue: '') String? phone,
        @HiveField(7, defaultValue: '') String? address,
        @HiveField(8, defaultValue: '') String? roadAddress,
        @HiveField(9, defaultValue: '') String? detailUrl}) = _Place;

  factory Place.fromKakaoJson(Map<String, dynamic> json) {
    return Place(
        name: json['place_name'] as String,
        latitude: double.parse(json['y']),
        longitude: double.parse(json['x']),
        kakaoId: int.parse(json['id']),
        address: json['address_name'],
        roadAddress: json['road_address_name'],
        distance: json['distance'] != '' ? double.parse(json['distance']) : null,
        detailUrl: json['place_url'] as String);
  }
}

