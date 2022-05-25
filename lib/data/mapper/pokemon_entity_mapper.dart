import 'package:injectable/injectable.dart';
import 'package:pokemon/data/model/pokemon_list_response.dart';
import 'package:pokemon/data/model/pokemons_response.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';

@lazySingleton
class PokemonEntityMapper {


  List<PokemonItemEntity> fromList(PokemonsResponse response){
    return response.results.map(mapItem).toList();
  }
  PokemonItemEntity mapItem(PokemonListResponse item){
    return PokemonItemEntity(name: item.name, url: item.url);
  }
}