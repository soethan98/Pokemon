import 'package:injectable/injectable.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';
import 'package:pokemon/data/model/pokemon_list_response.dart';
import 'package:pokemon/data/model/pokemons_response.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';

@lazySingleton
class PokemonEntityMapper {
  List<PokemonItemEntity> fromRemoteList(PokemonsResponse response) {
    return response.results.map(mapRemoteItem).toList();
  }

  PokemonItemEntity mapRemoteItem(PokemonListResponse item) {
    return PokemonItemEntity(name: item.name, url: item.url);
  }

  List<PokemonItemEntity> fromLocalList(List<PokemonDetailCache> caches) {
    return caches.map(mapLocalItem).toList();
  }

  PokemonItemEntity mapLocalItem(PokemonDetailCache item) {
    return PokemonItemEntity(name: item.name, url: item.id.toString());
  }
}
