import 'package:flutter/material.dart';
import 'package:pokemon/presentation/journey/detail/pokemon_detail_screen.dart';
import 'package:pokemon/presentation/journey/main/main_screen.dart';

import 'utils/route_constants.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) => {
        RouteList.initial: (context) => const MainScreen(),
        RouteList.detail: (context) => PokemonDetailScreen(pokemonId: settings.arguments as int)
     
      };
}
