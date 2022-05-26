import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/data/core/api_exceptions.dart';
import 'package:pokemon/data/local/pokemon_cache_source.dart';
import 'package:pokemon/data/mapper/pokemon_detail_mapper.dart';
import 'package:pokemon/data/mapper/pokemon_entity_mapper.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';
import 'package:pokemon/data/network/pokemon_remote_source.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';

@LazySingleton(as: PokemonRepository)
class PokemonRepoImpl implements PokemonRepository {
  final PokemonRemoteSource pokemonRemoteSource;
  final PokemonEntityMapper pokemonEntityMapper;
  final PokemonDetailMapper pokemonDetailMapper;
  final PokemonCacheSource pokemonCacheSource;

  PokemonRepoImpl(
      {required this.pokemonRemoteSource,
      required this.pokemonEntityMapper,
      required this.pokemonDetailMapper,
      required this.pokemonCacheSource});
  @override
  Future<Either<AppError, List<PokemonItemEntity>>> getPokemons() async {
    try {
      final result = await pokemonRemoteSource.getPokemons();
      return Right(pokemonEntityMapper.fromRemoteList(result));
    } on AppException catch (e) {
      return Left(AppError(AppErrorType.api, e.toString()));
    }
  }

  @override
  Future<Either<AppError, PokemonDetailEntity>> getPokemon(int id) async {
    try {
      final result = await pokemonRemoteSource.getPokemonById(id);
      return Right(pokemonDetailMapper.mapItem(result));
    } on AppException catch (e) {
      return Left(AppError(AppErrorType.api, e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> savePokemon(PokemonDetailEntity entity) async {
    try {
      final result = await pokemonCacheSource
          .savePokemonInCache(PokemonDetailCache.fromEntity(entity));
      return Right(result);
    } on Exception catch (e) {
      return Left(AppError(AppErrorType.database, e.toString()));
    }
  }

  @override
  Future<Either<AppError, bool>> checkIfPokemonFav(int id) async {
    try {
      final result = await pokemonCacheSource.checkIfFav(id);
      return Right(result);
    } on Exception catch (e) {
      return Left(AppError(AppErrorType.database, e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> deleteFavPokemon(int id) async {
    try {
      final result = await pokemonCacheSource.removePokemon(id);
      return Right(result);
    } on Exception catch (e) {
      return Left(AppError(AppErrorType.database, e.toString()));
    }
  }

  @override
  Future<Either<AppError, List<PokemonItemEntity>>>
      getFavoritePokemons() async {
    try {
      final result = await pokemonCacheSource.getPokemons();
      return Right(pokemonEntityMapper.fromLocalList(result));
    } on Exception catch (e) {
      return Left(AppError(AppErrorType.database, e.toString()));
    }
  }
}
