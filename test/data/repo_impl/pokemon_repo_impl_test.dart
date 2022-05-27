

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/data/core/api_exceptions.dart';
import 'package:pokemon/data/model/pokemon_detail_cache.dart';
import 'package:pokemon/data/repo_impl/pokemon_repo_impl.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/entities/pokemon_item_entity.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late PokemonRepoImpl sut;
  late MockPokemonEntityMapper mockPokemonEntityMapper;
  late MockPokemonDetailMapper mockPokemonDetailMapper;
  late MockPokemonRemoteSource mockPokemonRemoteSource;
  late MockPokemonCacheSource mockPokemonCacheSource;
  // late MockMapper
  setUp(() {
    mockPokemonCacheSource = MockPokemonCacheSource();
    mockPokemonRemoteSource = MockPokemonRemoteSource();
    mockPokemonDetailMapper = MockPokemonDetailMapper();
    mockPokemonEntityMapper = MockPokemonEntityMapper();
    sut = PokemonRepoImpl(
        pokemonRemoteSource: mockPokemonRemoteSource,
        pokemonEntityMapper: mockPokemonEntityMapper,
        pokemonDetailMapper: mockPokemonDetailMapper,
        pokemonCacheSource: mockPokemonCacheSource);
  });

  final entities = <PokemonItemEntity>[];

  group('getFavoritePokemons', () {
    test('Should call cache', () async {
      when(mockPokemonCacheSource.getPokemons())
          .thenAnswer((_) async => <PokemonDetailCache>[]);
      when(mockPokemonEntityMapper.fromLocalList(any))
          .thenReturn(<PokemonItemEntity>[]);
      await sut.getFavoritePokemons();
      verify(mockPokemonCacheSource.getPokemons()).called(1);
    });

    test('return left if throw exception', () async {
      when(mockPokemonCacheSource.getPokemons()).thenThrow(Exception());
      final result = await sut.getFavoritePokemons();
      expect(result, isA<Left>());
    });

    test('return right if response success from cache', () async {
      when(mockPokemonCacheSource.getPokemons())
          .thenAnswer((_) async => <PokemonDetailCache>[]);
      when(mockPokemonEntityMapper.fromLocalList(any)).thenReturn(entities);
      final result = await sut.getFavoritePokemons();
      expect(result, equals(Right(entities)));
    });
  });

  group('deleteFavPokemon', () {
    test('Should call cache', () async {
      when(mockPokemonCacheSource.removePokemon(any))
          .thenAnswer((_) async => _);

      await sut.deleteFavPokemon(1);
      verify(mockPokemonCacheSource.removePokemon(any)).called(1);
    });

    test('return left if throw exception', () async {
      when(mockPokemonCacheSource.removePokemon(any)).thenThrow(Exception());
      final result = await sut.deleteFavPokemon(1);
      expect(result, isA<Left>());
    });

    test('return right if response success from cache', () async {
      when(mockPokemonCacheSource.removePokemon(any))
          .thenAnswer((_) async => _);
      final result = await sut.deleteFavPokemon(1);
      expect(result, isA<Right>());
    });
  });

  group('getPokemon', () {
    test('return left when throw FetchDataException ', () async {
      when(mockPokemonRemoteSource.getPokemonById(any))
          .thenThrow(FetchDataException('Error!'));
      final result = await sut.getPokemon(1);
      verifyNever(mockPokemonDetailMapper.mapItem(null));
      expect(
          result,
          equals(const Left(AppError(
              AppErrorType.api, 'Error During Communication: Error!'))));
    });

    test('return left when throw Socket BadRequestException', () async {
      when(mockPokemonRemoteSource.getPokemonById(any))
          .thenThrow(BadRequestException('Error!'));
      final result = await sut.getPokemon(1);
      verifyNever(mockPokemonDetailMapper.mapItem(null));
      expect(
          result,
          equals(const Left(AppError(
              AppErrorType.api, 'Invalid Request: Error!'))));
    });
  });
}
