// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelImpl _$$TravelImplFromJson(Map<String, dynamic> json) => _$TravelImpl(
      name: json['name'] as String,
      visibility: json['visibility'] as String? ?? 'public',
      seasons: (json['seasons'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TravelPeriodEnumMap, e))
              .toSet() ??
          const {},
      thumbnail: Image.fromJson(json['thumbnail'] as Map<String, dynamic>),
      id: json['id'] as int?,
      motivation: TravelMotivation.of(json['motivation'] as String),
      accompany: TravelAccompany.of(json['accompanyType'] as String),
      transport: TravelTransport.of(json['transportType'] as String),
      ageGroup: $enumDecodeNullable(
          _$TravelAgeGroupEnumMap, nestedReader(json, 'member/ageGroup')),
      nickname: nestedReader(json, 'member/nickname') as String?,
    );

Map<String, dynamic> _$$TravelImplToJson(_$TravelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'visibility': instance.visibility,
      'seasons':
          instance.seasons.map((e) => _$TravelPeriodEnumMap[e]!).toList(),
      'thumbnail': instance.thumbnail,
      'id': instance.id,
      'motivation': _$TravelMotivationEnumMap[instance.motivation],
      'accompanyType': _$TravelAccompanyEnumMap[instance.accompany],
      'transportType': _$TravelTransportEnumMap[instance.transport],
      'member/ageGroup': _$TravelAgeGroupEnumMap[instance.ageGroup],
      'member/nickname': instance.nickname,
    };

const _$TravelPeriodEnumMap = {
  TravelPeriod.spring: 'spring',
  TravelPeriod.summer: 'summer',
  TravelPeriod.autumn: 'autumn',
  TravelPeriod.winter: 'winter',
};

const _$TravelAgeGroupEnumMap = {
  TravelAgeGroup.s20: 's20',
  TravelAgeGroup.s30: 's30',
  TravelAgeGroup.s40: 's40',
  TravelAgeGroup.s50: 's50',
  TravelAgeGroup.p60: 'p60',
};

const _$TravelMotivationEnumMap = {
  TravelMotivation.relax: 'relax',
  TravelMotivation.social: 'social',
  TravelMotivation.refresh: 'refresh',
  TravelMotivation.education: 'education',
  TravelMotivation.reflect: 'reflect',
  TravelMotivation.sns: 'sns',
  TravelMotivation.energy: 'energy',
  TravelMotivation.experience: 'experience',
  TravelMotivation.others: 'others',
};

const _$TravelAccompanyEnumMap = {
  TravelAccompany.solo: 'solo',
  TravelAccompany.friends: 'friends',
  TravelAccompany.parents: 'parents',
  TravelAccompany.children: 'children',
  TravelAccompany.family: 'family',
  TravelAccompany.others: 'others',
};

const _$TravelTransportEnumMap = {
  TravelTransport.car: 'car',
  TravelTransport.public: 'public',
};
