import 'package:injectable/injectable.dart';
import 'package:pokemon/presentation/models/pokemon_list_ui.dart';
import 'package:characters/characters.dart';
import 'package:pokemon/shared/extension/string_extension.dart';

import '../../domain/entities/pokemon_item_entity.dart';

@lazySingleton
class PokemonUiMapper {
  List<PokemonListUi> maps(List<PokemonItemEntity> items) =>
      items.map(mapItem).toList();

  PokemonListUi mapItem(PokemonItemEntity item) {
    final number = getNumber(item.url);
    return PokemonListUi(
        name: item.name.capitalize(),
        imageUrl:
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$number.png',
        number: number);
  }

  int getNumber(String url) {
    final char = url.characters;

    final number = url.endsWith('/')
        ? char.skipLast(1).takeLastWhile((s) => double.tryParse(s) != null)
        : char.takeLastWhile((s) => double.tryParse(s) != null);
    return int.parse(number.toString());
  }
}
