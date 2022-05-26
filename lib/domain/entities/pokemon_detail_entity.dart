import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

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

  factory PokemonDetailEntity.fromUiModel(UiPokemonDetail model) {
    return PokemonDetailEntity(
        weight: model.weight,
        height: model.height,
        id: model.id,
        name: model.name,
        abilities: model.abilities
            .split('')
            .map((e) => AbilityEntity.fromUiModel(e))
            .toList(),
        types: model.types.split('').map((e) => TypeEntity(type: e)).toList(),
        stats: model.stats.map((e) => StatEntity.fromUiModel(e)).toList());
  }
}

class AbilityEntity {
  final String name;

  AbilityEntity({required this.name});

  factory AbilityEntity.fromUiModel(String ability) {
    return AbilityEntity(name: ability);
  }
}

class TypeEntity {
  final String type;

  TypeEntity({required this.type});
}

class StatEntity {
  final int baseStat;
  final String name;

  StatEntity({required this.baseStat, required this.name});

  factory StatEntity.fromUiModel(UiStatDetail model) {
    return StatEntity(baseStat: model.baseState, name: model.name);
  }
}
