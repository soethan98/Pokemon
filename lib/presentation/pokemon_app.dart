import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokemon/main.dart';
import 'package:pokemon/presentation/journey/main/main_screen.dart';

class PokemonApp extends StatefulWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  State<PokemonApp> createState() => _PokemonAppState();
}

class _PokemonAppState extends State<PokemonApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainScreen(),
    );
  }
}