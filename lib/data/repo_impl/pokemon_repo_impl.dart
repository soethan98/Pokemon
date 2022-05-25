import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/data/core/api_exceptions.dart';
import 'package:pokemon/data/mapper/pokemon_entity_mapper.dart';
import 'package:pokemon/data/network/pokemon_remote_source.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';

@LazySingleton(as: PokemonRepository)
class PokemonRepoImpl implements PokemonRepository {
  final PokemonRemoteSource pokemonRemoteSource;
  final PokemonEntityMapper pokemonEntityMapper;

  PokemonRepoImpl(
      {required this.pokemonRemoteSource, required this.pokemonEntityMapper});
  @override
  Future<Either<AppError, List<PokemonItemEntity>>> getPokemons() async {
    try {
      final result = await pokemonRemoteSource.getPokemons();
      return Right(pokemonEntityMapper.fromList(result));
    } on AppException catch (e) {
      return Left(AppError(AppErrorType.api, e.toString()));
    }
  }
}