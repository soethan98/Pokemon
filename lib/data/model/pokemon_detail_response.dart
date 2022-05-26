// To parse this JSON data, do
//
//     final pokemonDetailResponse = pokemonDetailResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pokemon_detail_response.freezed.dart';
part 'pokemon_detail_response.g.dart';

@freezed
 class PokemonDetailResponse with _$PokemonDetailResponse {
  const factory PokemonDetailResponse({
    @Default([]) List<AbilityElement> abilities,
    @Default(0) int height,
    @Default(0) weight,
    required int id,
    required String name,
    @Default([]) List<Type> types,
    @Default([]) List<Stat> stats,
  }) = _PokemonDetailResponse;

  factory PokemonDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailResponseFromJson(json);
}

@freezed
 class AbilityElement with _$AbilityElement {
  const factory AbilityElement({
    StatClass? ability,
    bool? isHidden,
  }) = _AbilityElement;

  factory AbilityElement.fromJson(Map<String, dynamic> json) =>
      _$AbilityElementFromJson(json);
}

@freezed
 class StatClass with _$StatClass {
  const factory StatClass({
    String? name,
  }) = _StatClass;

  factory StatClass.fromJson(Map<String, dynamic> json) =>
      _$StatClassFromJson(json);
}

@freezed
 class Stat with _$Stat {
  const factory Stat({
    @JsonKey(name: 'base_stat')
    int? baseStat,
    int? effort,
    StatClass? stat,
  }) = _Stat;

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

@freezed
 class Type with _$Type {
  const factory Type({
    StatClass? type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
