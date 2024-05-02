// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      latitude: (nestedReader(json, 'location/latitude') as num).toDouble(),
      longitude: (nestedReader(json, 'location/longitude') as num).toDouble(),
      googlePlaceId: json['googlePlaceId'] as String,
      type: PlaceType.of(json['type'] as String),
      images: json['images'] == null
          ? const []
          : Place._imagesFromJson(json['images'] as List),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location/latitude': instance.latitude,
      'location/longitude': instance.longitude,
      'googlePlaceId': instance.googlePlaceId,
      'type': _$PlaceTypeEnumMap[instance.type]!,
      'images': instance.images,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.food: 'food',
  PlaceType.nature: 'nature',
  PlaceType.attraction: 'attraction',
  PlaceType.leisure: 'leisure',
  PlaceType.culture: 'culture',
  PlaceType.hotel: 'hotel',
  PlaceType.theme: 'theme',
};
