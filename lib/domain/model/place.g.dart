// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceAdapter extends TypeAdapter<Place> {
  @override
  final int typeId = 1;

  @override
  Place read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Place(
      name: fields[0] as String,
      latitude: fields[1] as double,
      longitude: fields[2] as double,
      kakaoId: fields[3] as int,
      id: fields[4] == null ? -1 : fields[4] as int?,
      distance: fields[5] == null ? 0.0 : fields[5] as double?,
      phone: fields[6] == null ? '' : fields[6] as String?,
      address: fields[7] == null ? '' : fields[7] as String?,
      roadAddress: fields[8] == null ? '' : fields[8] as String?,
      detailUrl: fields[9] == null ? '' : fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Place obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.kakaoId)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.distance)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.roadAddress)
      ..writeByte(9)
      ..write(obj.detailUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
