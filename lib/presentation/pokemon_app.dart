import 'package:flutter/material.dart';

import 'package:pokemon/presentation/fade_page_route_builder.dart';
import 'package:pokemon/presentation/routes.dart';
import 'package:pokemon/presentation/utils/route_constants.dart';

class PokemonApp extends StatefulWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  State<PokemonApp> createState() => _PokemonAppState();
}

class _PokemonAppState extends State<PokemonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteList.initial,
      onGenerateRoute: (RouteSettings settings) {
        final routes = Routes.getRoutes(settings);
        final WidgetBuilder? builder = routes[settings.name];
        return FadePageRouteBuilder(
          builder: builder!,
          settings: settings,
        );
      },
    );
  }
}
