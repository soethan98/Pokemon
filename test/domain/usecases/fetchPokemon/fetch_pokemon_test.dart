import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon/domain/usecases/fetchPokemon/fetch_pokemon.dart';

import '../../../helpers/mock_obj.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockPokemonRepository mockPokemonRepository;
  late FetchPokemon sut;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    sut = FetchPokemon(repository: mockPokemonRepository);
  });
  test(
    'should return pokemon from repo',
    () async {
      // arrange
      when(mockPokemonRepository.getPokemon(any))
          .thenAnswer((_) async => Right(mockPokemonDetailEntity));

      // act
      final result = await sut.call(1);

      // assert
      expect(result, equals(Right(mockPokemonDetailEntity)));
    },
  );

  test(
    'should return AppError from repo',
    () async {
      // arrange
      when(mockPokemonRepository.getPokemon(any))
          .thenAnswer((_) async => const Left(AppError(AppErrorType.api, '')));

      // act
      final result = await sut.call(1);

      // assert
      expect(result, equals(const Left(AppError(AppErrorType.api, ''))));
    },
  );
}
