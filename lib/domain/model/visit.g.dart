// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitImpl _$$VisitImplFromJson(Map<String, dynamic> json) => _$VisitImpl(
      id: json['id'] as int?,
      dayOfTravel: json['dayOfTravel'] as int?,
      orderOfVisit: json['orderOfVisit'] as int?,
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      images: json['images'] == null
          ? const []
          : Visit._imagesFromJson(json['images'] as List),
    );

Map<String, dynamic> _$$VisitImplToJson(_$VisitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dayOfTravel': instance.dayOfTravel,
      'orderOfVisit': instance.orderOfVisit,
      'place': instance.place,
      'images': instance.images,
    };
