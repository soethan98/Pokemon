import 'package:flutter/material.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:pokemon/presentation/pokemon_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const PokemonApp());
}
