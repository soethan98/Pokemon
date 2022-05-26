import 'package:injectable/injectable.dart';
import 'package:pokemon/data/model/pokemon_detail_response.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';

@lazySingleton
class PokemonDetailMapper {
  PokemonDetailEntity mapItem(PokemonDetailResponse response) {
    return PokemonDetailEntity(
        weight: response.weight,
        height: response.height,
        id: response.id,
        name: response.name,
        abilities: mapAbilities(response.abilities),
        types: mapType(response.types));
  }

  List<TypeEntity> mapType(List<Type> types) {
    return types.map((e) => TypeEntity(type: e.type?.name ?? "")).toList();
  }

  List<AbilityEntity> mapAbilities(List<AbilityElement> abilities) {
    return abilities
        .map((e) => AbilityEntity(name: e.ability?.name ?? ""))
        .toList();
  }
}
