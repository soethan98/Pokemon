import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';

import '../../entities/app_error.dart';
import '../../repositories/pokemon_repository.dart';
import '../use_case.dart';

@lazySingleton
class FetchPokemon extends UseCase<PokemonDetailEntity, int> {
  final PokemonRepository repository;

  FetchPokemon({required this.repository});
  @override
  Future<Either<AppError, PokemonDetailEntity>> call(int params) async =>
      repository.getPokemon(params);
}
