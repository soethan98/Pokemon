import 'package:dartz/dartz.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/presentation/common/widgets/pokemon_item_card.dart';

abstract class PokemonRepository {
  Future<Either<AppError,List<PokemonItemEntity>>> getPokemons();
  Future<Either<AppError,PokemonDetailEntity>> getPokemon(int id);
}