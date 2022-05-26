import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:pokemon/presentation/pokemon_app.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
   final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  configureDependencies();
  Hive.registerAdapter(PokemonDetailCacheAdapter());
  Hive.registerAdapter(AbilityCacheAdapter());
  Hive.registerAdapter(TypeCacheAdapter());
  Hive.registerAdapter(StatCacheAdapter());
  runApp(const PokemonApp());
}
