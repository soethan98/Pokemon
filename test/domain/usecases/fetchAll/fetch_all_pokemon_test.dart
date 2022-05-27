import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/entities/no_params.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import 'package:pokemon/domain/usecases/fetchAll/fetch_all_pokemon.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late FetchAllPokemon sut;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    sut = FetchAllPokemon(repository: mockPokemonRepository);
  });

  final pokemons = <PokemonItemEntity>[];

  test(
    'should return pokemons from repo',
    () async {
      // arrange
      when(mockPokemonRepository.getPokemons())
          .thenAnswer((_) async => Right(pokemons));

      // act
      final result = await sut.call(NoParams());

      // assert
      expect(result, equals(Right(pokemons)));
    },
  );

  test(
    'should return AppError from repo',
    () async {
      // arrange
      when(mockPokemonRepository.getPokemons())
          .thenAnswer((_) async => const Left(AppError(AppErrorType.api, '')));

      // act
      final result = await sut.call(NoParams());

      // assert
      expect(result, equals(const Left(AppError(AppErrorType.api, ''))));
    },
  );
}
