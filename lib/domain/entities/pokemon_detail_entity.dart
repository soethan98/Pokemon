class PokemonDetailEntity {
  final int weight;
  final int height;
  final int id;
  final String name;
  final List<AbilityEntity> abilities;
  final List<TypeEntity> types;
  final List<StatEntity> stats;

  PokemonDetailEntity(
      {required this.weight,
      required this.height,
      required this.id,
      required this.name,
      required this.abilities,
      required this.types,
      required this.stats});
}

class AbilityEntity {
  final String name;

  AbilityEntity({required this.name});
}

class TypeEntity {
  final String type;

  TypeEntity({required this.type});
}

class StatEntity {
  final int baseStat;
  final String name;

  StatEntity({required this.baseStat, required this.name});
}
