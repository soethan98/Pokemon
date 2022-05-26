import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';
import 'package:pokemon/presentation/utils/size_constants.dart';
import 'package:pokemon/shared/extension/string_extension.dart';

import '../../bloc/toggle_favorite/favorite_cubit.dart';

class DetailBackdropWidget extends StatelessWidget {
  final UiPokemonDetail data;
  const DetailBackdropWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 120 / 2),
          child: FractionallySizedBox(
            heightFactor: 1,
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: data.bgColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: kToolbarHeight / 1.5, left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child:
                          BlocBuilder<FavoriteCubit, FavoriteState>(
                        builder: (context, state) {
                          return state.maybeWhen(orElse: () {
                            return const Icon(Icons.favorite_border);
                          }, isFavoriteMovie: (isFav) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<FavoriteCubit>()
                                    .toggleFavorite(data, !isFav);
                              },
                              child: Icon(
                                isFav ? Icons.favorite : Icons.favorite_border,
                                size: Sizes.dimen_32,
                                color: Colors.white,
                              ),
                            );
                          });
                        },
                      ),
                    ),
                    Text(
                      data.name.capitalize(),
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.white),
                    ),
                    Chip(label: Text(data.types))
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: CachedNetworkImage(
              width: 120,
              height: 120,
              imageUrl: data.imageUrl,
              progressIndicatorBuilder: (ctx, url, progress) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ))
      ],
    );
  }
}
