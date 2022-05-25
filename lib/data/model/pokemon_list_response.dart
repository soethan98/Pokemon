import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';


@freezed
class PokemonListResponse with _$PokemonListResponse {
  factory PokemonListResponse({required String name, required String url}) =
      _PokemonListResponse;
  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}
