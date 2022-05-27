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
  late CheckIfPokemonFav sut;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    sut = CheckIfPokemonFav(repository: mockPokemonRepository);
  });
  test(
    'should return right from repo if exist in cache',
    () async {
      // arrange
      when(mockPokemonRepository.checkIfPokemonFav(any))
          .thenAnswer((_) async => const Right(true));

      // act
      final result = await sut.call(1);

      // assert
      expect(result, isA<Right>());
    },
  );

  test(
    'should return left from repo if error occusr ',
    () async {
      // arrange
      when(mockPokemonRepository.checkIfPokemonFav(any))
          .thenAnswer((_) async => const Left(AppError(AppErrorType.database, '')));

      // act
      final result = await sut.call(1);

      // assert
      expect(result, isA<Left>());
    },
  );
}