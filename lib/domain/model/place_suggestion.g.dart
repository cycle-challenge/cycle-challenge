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
      googlePlaceId: fields[0] as String,
      name: fields[1] as String,
      address: fields[2] as String,
      modifiedAt: fields[3] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, PlaceSuggestion obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.googlePlaceId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.address)
      ..writeByte(3)
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
