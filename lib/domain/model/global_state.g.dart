// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlobalStateAdapter extends TypeAdapter<GlobalState> {
  @override
  final int typeId = 2;

  @override
  GlobalState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlobalState(
      hasAgreedTerms: fields[0] == null ? false : fields[0] as bool,
      hasCheckedPermissions: fields[1] == null ? false : fields[1] as bool,
      themeMode: fields[2] == null ? 'system' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GlobalState obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.hasAgreedTerms)
      ..writeByte(1)
      ..write(obj.hasCheckedPermissions)
      ..writeByte(2)
      ..write(obj.themeMode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlobalStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      hasAgreedTerms: json['hasAgreedTerms'] as bool? ?? false,
      hasCheckedPermissions: json['hasCheckedPermissions'] as bool? ?? false,
      themeMode: json['themeMode'] as String? ?? 'system',
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'hasAgreedTerms': instance.hasAgreedTerms,
      'hasCheckedPermissions': instance.hasCheckedPermissions,
      'themeMode': instance.themeMode,
    };
