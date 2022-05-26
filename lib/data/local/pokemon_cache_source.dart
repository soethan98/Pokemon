import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';

abstract class PokemonCacheSource {
  Future<List<PokemonDetailCache>> getPokemons();
  Future<void> savePokemonInCache(PokemonDetailCache pokemon);
  Future<void> removePokemon(int id);
  Future<bool> checkIfFav(int id);
}

@LazySingleton(as: PokemonCacheSource)
class PokemonCacheSourceImpl implements PokemonCacheSource {
  final String boxName = 'pokemon';
  @override
  Future<List<PokemonDetailCache>> getPokemons() async {
    var box = await Hive.openBox(boxName);
    var items = <PokemonDetailCache>[];
    for (var pokemon in box.values) {
      items.add(pokemon);
    }
    return items;
  }

  @override
  Future<void> savePokemonInCache(PokemonDetailCache pokemon) async {
    final box = await Hive.openBox(boxName);
    await box.put(pokemon.id, pokemon);
  }

  @override
  Future<bool> checkIfFav(int id) async {
    final box = await Hive.openBox(boxName);
    return box.containsKey(id);
  }

  @override
  Future<void> removePokemon(int id) async {
    final box = await Hive.openBox(boxName);
    await box.delete(id);
  }
}
