import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon/domain/usecases/fetchPokemon/fetch_pokemon.dart';
import 'package:pokemon/domain/usecases/usecases.dart';

import '../../../helpers/mock_obj.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late AddFavorite sut;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    sut = AddFavorite(repository: mockPokemonRepository);
  });
  test(
    'should return right from repo if save success',
    () async {
      // arrange
      when(mockPokemonRepository.savePokemon(any))
          .thenAnswer((_) async => Right(_));

      // act
      final result = await sut.call(mockPokemonDetailEntity);

      // assert
      expect(result, isA<Right>());
    },
  );

  test(
    'should return left from repo if save fail',
    () async {
      // arrange
      when(mockPokemonRepository.savePokemon(any))
          .thenAnswer((_) async => const Left(AppError(AppErrorType.database, '')));

      // act
      final result = await sut.call(mockPokemonDetailEntity);

      // assert
      expect(result, isA<Left>());
    },
  );
}
