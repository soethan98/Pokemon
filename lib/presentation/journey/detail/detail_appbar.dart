import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/toggle_favorite_cubit.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

class DetailAppbar extends StatelessWidget with PreferredSizeWidget {
  final UiPokemonDetail data;
  const DetailAppbar({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        BlocBuilder<ToggleFavoriteCubit, ToggleFavoriteState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return const Icon(Icons.favorite_border);
            }, isFavoriteMovie: (isFav) {
              return GestureDetector(
                onTap: () {
                  context
                      .read<ToggleFavoriteCubit>()
                      .toggleFavorite(data, isFav);
                },
                child: Icon(isFav ? Icons.favorite : Icons.favorite_border),
              );
            });
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
