import 'package:hive/hive.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';

part 'pokemon_detail_cache.g.dart';

@HiveType(typeId: 0)
class PokemonDetailCache {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final int id;

  @HiveField(2)
  final int weight;

  @HiveField(3)
  final int height;

  @HiveField(4)
  final List<AbilityCache> abilities;

  @HiveField(5)
  final List<TypeCache> types;

  @HiveField(6)
  final List<StatCache> stats;

  PokemonDetailCache(
      {required this.id,
      required this.height,
      required this.name,
      required this.weight,
      required this.abilities,
      required this.stats,
      required this.types})
      : super();

  factory PokemonDetailCache.fromEntity(PokemonDetailEntity entity) {
    return PokemonDetailCache(
        id: entity.id,
        height: entity.height,
        name: entity.name,
        weight: entity.weight,
        types: entity.types.map((e) => TypeCache.fromEntity(e)).toList(),
        stats: entity.stats.map((e) => StatCache.fromEntity(e)).toList(),
        abilities:
            entity.abilities.map((e) => AbilityCache.fromEntity(e)).toList());
  }
}

@HiveType(typeId: 1)
class AbilityCache extends HiveObject {
  @HiveField(0)
  final String name;

  AbilityCache({required this.name});

  factory AbilityCache.fromEntity(AbilityEntity entity) {
    return AbilityCache(name: entity.name);
  }
}

@HiveType(typeId: 2)
class TypeCache {
  @HiveField(0)
  final String type;

  TypeCache({required this.type});

  factory TypeCache.fromEntity(TypeEntity entity) {
    return TypeCache(type: entity.type);
  }
}

@HiveType(typeId: 3)
class StatCache {
  @HiveField(0)
  final int baseStat;
  @HiveField(1)
  final String name;

  StatCache({required this.baseStat, required this.name});

  factory StatCache.fromEntity(StatEntity entity) {
    return StatCache(baseStat: entity.baseStat, name: entity.name);
  }
}
