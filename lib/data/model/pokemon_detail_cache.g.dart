// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_cache.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailCacheAdapter extends TypeAdapter<PokemonDetailCache> {
  @override
  final int typeId = 0;

  @override
  PokemonDetailCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailCache(
      id: fields[1] as int,
      height: fields[3] as int,
      name: fields[0] as String,
      weight: fields[2] as int,
      abilities: (fields[4] as List).cast<AbilityCache>(),
      stats: (fields[6] as List).cast<StatCache>(),
      types: (fields[5] as List).cast<TypeCache>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailCache obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.abilities)
      ..writeByte(5)
      ..write(obj.types)
      ..writeByte(6)
      ..write(obj.stats);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilityCacheAdapter extends TypeAdapter<AbilityCache> {
  @override
  final int typeId = 1;

  @override
  AbilityCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AbilityCache(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AbilityCache obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeCacheAdapter extends TypeAdapter<TypeCache> {
  @override
  final int typeId = 2;

  @override
  TypeCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeCache(
      type: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TypeCache obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatCacheAdapter extends TypeAdapter<StatCache> {
  @override
  final int typeId = 3;

  @override
  StatCache read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StatCache(
      baseStat: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StatCache obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatCacheAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
