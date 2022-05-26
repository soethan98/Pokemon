import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/no_params.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

import '../../entities/app_error.dart';
import '../use_case.dart';

@lazySingleton
class GetFavoritePokemons extends UseCase<List<PokemonItemEntity>, NoParams> {
  final PokemonRepository repository;

  GetFavoritePokemons({required this.repository});

  @override
  Future<Either<AppError, List<PokemonItemEntity>>> call(
          NoParams params) async =>
      repository.getFavoritePokemons();
}
