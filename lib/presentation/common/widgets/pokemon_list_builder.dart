import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart';
import 'package:pokemon/presentation/models/pokemon_list_ui.dart';

import '../../utils/route_constants.dart';
import '../../utils/size_constants.dart';
import 'error_launcher.dart';
import 'pokemon_item_card.dart';

class PokemonListBuilder extends StatelessWidget {
  final List<PokemonListUi> result;
  const PokemonListBuilder({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: Sizes.dimen_8,
        crossAxisSpacing: Sizes.dimen_8,
        children: result
            .map((e) => PokemonItemCard(
                  pokemonListUi: e,
                  onItemClick: () {
                    Navigator.pushNamed(context, RouteList.detail,
                        arguments: e.number);
                  },
                ))
            .toList(),
      ),
    );
  }
}
