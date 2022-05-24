import 'package:flutter/material.dart';
import 'package:pokemon/presentation/common/widgets/pokemon_item_card.dart';
import 'package:pokemon/presentation/models/pokemon_list_ui.dart';

import '../../utils/size_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: Sizes.dimen_8,
        crossAxisSpacing: Sizes.dimen_8,
        children:
            pokemonList.map((e) => PokemonItemCard(pokemonListUi: e)).toList(),
      ),
    );
  }
}
