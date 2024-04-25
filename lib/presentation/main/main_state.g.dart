// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      navigationIndex: json['navigationIndex'] as int? ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 244.0,
      minHeight: (json['minHeight'] as num?)?.toDouble() ?? 244.0,
      maxHeight: (json['maxHeight'] as num?)?.toDouble() ?? 0.0,
      isExpanded: json['isExpanded'] as bool? ?? false,
      isAnimating: json['isAnimating'] as bool? ?? false,
      canViewScrollUp: json['canViewScrollUp'] as bool? ?? false,
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'navigationIndex': instance.navigationIndex,
      'height': instance.height,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
      'isExpanded': instance.isExpanded,
      'isAnimating': instance.isAnimating,
      'canViewScrollUp': instance.canViewScrollUp,
    };
