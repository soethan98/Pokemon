// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetailResponse _$$_PokemonDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonDetailResponse(
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => AbilityElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      height: json['height'] as int? ?? 0,
      weight: json['weight'] ?? 0,
      id: json['id'] as int,
      name: json['name'] as String,
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => Type.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      stats: (json['stats'] as List<dynamic>?)
              ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PokemonDetailResponseToJson(
        _$_PokemonDetailResponse instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'height': instance.height,
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'types': instance.types,
      'stats': instance.stats,
    };

_$_AbilityElement _$$_AbilityElementFromJson(Map<String, dynamic> json) =>
    _$_AbilityElement(
      ability: json['ability'] == null
          ? null
          : StatClass.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
    );

Map<String, dynamic> _$$_AbilityElementToJson(_$_AbilityElement instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
    };

_$_StatClass _$$_StatClassFromJson(Map<String, dynamic> json) => _$_StatClass(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StatClassToJson(_$_StatClass instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Stat _$$_StatFromJson(Map<String, dynamic> json) => _$_Stat(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : StatClass.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatToJson(_$_Stat instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$_Type _$$_TypeFromJson(Map<String, dynamic> json) => _$_Type(
      type: json['type'] == null
          ? null
          : StatClass.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TypeToJson(_$_Type instance) => <String, dynamic>{
      'type': instance.type,
    };
