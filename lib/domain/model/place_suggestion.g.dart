// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_suggestion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceSuggestionAdapter extends TypeAdapter<PlaceSuggestion> {
  @override
  final int typeId = 1;

  @override
  PlaceSuggestion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PlaceSuggestion(
      placeId: fields[0] as int,
      name: fields[1] as String,
      localAddr: fields[2] as String,
      roadAddr: fields[3] as String,
      modifiedAt: fields[4] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, PlaceSuggestion obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.placeId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.localAddr)
      ..writeByte(3)
      ..write(obj.roadAddr)
      ..writeByte(4)
      ..write(obj.modifiedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceSuggestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceSuggestionImpl _$$PlaceSuggestionImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceSuggestionImpl(
      placeId: json['placeId'] as int,
      name: json['name'] as String,
      localAddr: json['localAddr'] as String,
      roadAddr: json['roadAddr'] as String,
      modifiedAt: json['modifiedAt'] == null
          ? null
          : DateTime.parse(json['modifiedAt'] as String),
    );

Map<String, dynamic> _$$PlaceSuggestionImplToJson(
        _$PlaceSuggestionImpl instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'name': instance.name,
      'localAddr': instance.localAddr,
      'roadAddr': instance.roadAddr,
      'modifiedAt': instance.modifiedAt?.toIso8601String(),
    };
