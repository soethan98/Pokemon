import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../entities/app_error.dart';
import '../../repositories/pokemon_repository.dart';
import '../use_case.dart';

@lazySingleton
class CheckIfPokemonFav extends UseCase<bool, int> {
  final PokemonRepository repository;

  CheckIfPokemonFav({required this.repository});

  @override
  Future<Either<AppError, bool>> call(int params) async =>
      repository.checkIfPokemonFav(params);
}
