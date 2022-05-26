import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/app_error.dart';
import '../../repositories/pokemon_repository.dart';
import '../use_case.dart';

@lazySingleton
class DeleteFavoritePokemon extends UseCase<void, int> {
  final PokemonRepository repository;

  DeleteFavoritePokemon({required this.repository});

  @override
  Future<Either<AppError, void>> call(int params) async =>
      repository.deleteFavPokemon(params);
}
