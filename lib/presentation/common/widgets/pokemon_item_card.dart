import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/presentation/models/pokemon_list_ui.dart';
import 'package:pokemon/presentation/utils/size_constants.dart';

class PokemonItemCard extends StatelessWidget {
  final PokemonListUi pokemonListUi;
  const PokemonItemCard({Key? key, required this.pokemonListUi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Sizes.dimen_12))),
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: pokemonListUi.imageUrl,
            progressIndicatorBuilder: (ctx, url, progress) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Text(
            pokemonListUi.name,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
