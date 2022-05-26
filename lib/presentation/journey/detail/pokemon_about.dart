import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon/presentation/journey/detail/about_item.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';
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
        children: [
          AboutItem(title: 'Height', value: '${data.height.convertToUnit()} m'),
          AboutItem(title: 'Weight', value: '${data.weight.convertToUnit()} kg'),
          AboutItem(title: 'Abilities', value: data.abilities),
        ],
      ),
    ));
  }
}
