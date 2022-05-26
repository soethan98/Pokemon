import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';

abstract class PokemonCacheSource {
  // Future<PokemonDetailCache> getPokemonFromCache(int id);
  Future<void> savePokemonInCache(PokemonDetailCache pokemon);
  Future<void> removePokemon(int id);
  Future<bool> checkIfFav(int id);
}

@LazySingleton(as: PokemonCacheSource)
class PokemonCacheSourceImpl implements PokemonCacheSource {
  
  // @override
  // Future<PokemonDetailCache> getPokemonFromCache(int id) async {
  //  var box = await Hive.openBox('myBox');
   
  // }

  @override
  Future<void> savePokemonInCache(PokemonDetailCache pokemon) async {
    final box = await Hive.openBox('pokemon');
    await box.put(pokemon.id, pokemon);
  }

  @override
  Future<bool> checkIfFav(int id) async {
    final box = await Hive.openBox('pokemon');
    return box.containsKey(id);
  }

  @override
  Future<void> removePokemon(int id) async {
    final box = await Hive.openBox('pokemon');
    await box.delete(id);
  }
}
