import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

import '../../entities/app_error.dart';
import '../use_case.dart';

@lazySingleton
class AddFavorite extends UseCase<void, PokemonDetailEntity> {
  final PokemonRepository repository;

  AddFavorite({required this.repository});
  
  @override
  Future<Either<AppError, void>> call(PokemonDetailEntity params) async =>
      repository.savePokemon(params);
}
