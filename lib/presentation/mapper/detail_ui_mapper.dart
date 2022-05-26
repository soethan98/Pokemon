import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';
import 'package:pokemon/presentation/utils/color_constants.dart';

@lazySingleton
class DetailUiMapper {
  UiPokemonDetail mapItem(PokemonDetailEntity entity) {
    debugPrint('Mapper ${entity.types.first.type}');
    return UiPokemonDetail(
        abilities: entity.abilities.map((e) => e.name).toList().join(','),
        types: entity.types.map((e) => e.type).toList().join(','),
        id: entity.id,
        name: entity.name,
        height: entity.height,
        weight: entity.weight,
        bgColor: getBackgroundColor(entity.types.first.type),
        imageUrl: 'https://cdn.traction.one/pokedex/pokemon/${entity.id}.png',
        stats: mapStat(entity.stats));
  }

  List<UiStatDetail> mapStat(List<StatEntity> entities) => entities
      .map((e) => UiStatDetail(name: e.name, baseState: e.baseStat))
      .toList();

  // List<String> mapType(List<TypeEntity> entities) =>
  //     entities.map((e) => e.type).toList();
}
