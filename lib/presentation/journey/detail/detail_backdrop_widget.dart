import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';
import 'package:pokemon/presentation/utils/color_constants.dart';
import 'package:pokemon/shared/extension/string_extension.dart';

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
                padding: const EdgeInsets.only(top: 90.0, left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
