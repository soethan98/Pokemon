import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pokemon/presentation/journey/detail/about_item.dart';
import 'package:pokemon/presentation/journey/detail/stats_item.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';
import 'package:pokemon/presentation/utils/color_constants.dart';
import 'package:pokemon/presentation/utils/size_constants.dart';
import 'package:pokemon/shared/extension/string_extension.dart';

class PokemonAbout extends StatelessWidget {
  final UiPokemonDetail data;
  const PokemonAbout({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.dimen_16, vertical: Sizes.dimen_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutItem(title: 'Height', value: '${data.height.convertToUnit()} m'),
          AboutItem(
              title: 'Weight', value: '${data.weight.convertToUnit()} kg'),
          AboutItem(title: 'Abilities', value: data.abilities),
          const SizedBox(
            height: Sizes.dimen_20,
          ),
          Text(
            'Stats',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: Sizes.dimen_16,
          ),
          ...data.stats
              .map((e) => StatesItem(
                  title: e.name,
                  progressColor:
                      data.bgColor ?? Theme.of(context).colorScheme.secondary,
                  progressValue: e.baseState))
              .toList()
        ],
      ),
    ));
  }
}
