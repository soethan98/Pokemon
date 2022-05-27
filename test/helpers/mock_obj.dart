import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

final mockPokemonDetailUiObj = UiPokemonDetail(
    id: 1,
    name: 'name',
    height: 100,
    weight: 100,
    imageUrl: 'imageUrl ',
    types: 'types',
    abilities: 'abilites',
    stats: []);

final mockPokemonDetailEntity = PokemonDetailEntity(
    weight: 1,
    height: 1,
    id: 1,
    name: 'namw',
    abilities: [],
    types: [],
    stats: []);
