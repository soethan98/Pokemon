import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon/data/model/pokemon_list_response.dart';

part 'pokemons_response.freezed.dart';
part 'pokemons_response.g.dart';

@freezed
class PokemonsResponse with _$PokemonsResponse {
  factory PokemonsResponse({required List<PokemonListResponse> results}) =
      _PokemonsResponse;
  factory PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonsResponseFromJson(json);
}
