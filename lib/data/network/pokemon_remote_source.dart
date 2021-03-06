import 'package:injectable/injectable.dart';
import 'package:pokemon/data/core/api_base_helper.dart';
import 'package:pokemon/data/model/pokemon_detail_response.dart';
import 'package:pokemon/data/model/pokemons_response.dart';

abstract class PokemonRemoteSource {
  Future<PokemonsResponse> getPokemons();
  Future<PokemonDetailResponse> getPokemonById(int id);
}

@LazySingleton(as: PokemonRemoteSource)
class PokemonRemoteSourceImpl implements PokemonRemoteSource {
  final ApiBaseHelper apiBaseHelper;

  PokemonRemoteSourceImpl({required this.apiBaseHelper});
  @override
  Future<PokemonsResponse> getPokemons() async {
    final response = await apiBaseHelper.get('/pokemon');
    return PokemonsResponse.fromJson(response);
  }

  @override
  Future<PokemonDetailResponse> getPokemonById(int id)  async{
    final response = await apiBaseHelper.get('/pokemon/$id');
    return PokemonDetailResponse.fromJson(response);
  }
}
