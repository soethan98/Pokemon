// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonsResponse _$$_PokemonsResponseFromJson(Map<String, dynamic> json) =>
    _$_PokemonsResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonListResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonsResponseToJson(_$_PokemonsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
