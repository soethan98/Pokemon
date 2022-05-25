import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:pokemon/domain/entities/no_params.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';

import '../use_case.dart';

@lazySingleton
class FetchAllPokemon extends UseCase<List<PokemonItemEntity>, NoParams> {
  final PokemonRepository repository;

  FetchAllPokemon({required this.repository});
  @override
  Future<Either<AppError, List<PokemonItemEntity>>> call(NoParams params) async =>
      repository.getPokemons();
}
