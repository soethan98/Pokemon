class PokemonDetailEntity {
  final int weight;
  final int height;
  final int id;
  final String name;
  final List<AbilityEntity> abilities;
  final List<TypeEntity> types;

  PokemonDetailEntity(
      {required this.weight,
      required this.height,
      required this.id,
      required this.name,
      required this.abilities,
      required this.types});
}

class AbilityEntity {
  final String name;
  final bool isHidden;

  AbilityEntity({required this.name, required this.isHidden});
}

class TypeEntity {
  final String type;

  TypeEntity({required this.type});
}

class StatEntity {
  final int baseStat;
  final int effort;
  final String name;

  StatEntity(
      {required this.baseStat, required this.effort, required this.name});
}
