import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/favorite_cubit.dart';

import '../../../helpers/mock_obj.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late FavoriteCubit sut;
  late MockCheckIfPokemonFav mockCheckIfPokemonFav;
  late MockAddFavorite mockAddFavorite;
  late MockPokemonUiMapper mockPokemonUiMapper;
  late MockDeleteFavoritePokemon mockDeleteFavoritePokemon;
  late MockGetFavoritePokemons mockGetFavoritePokemons;

  setUp(() {
    mockAddFavorite = MockAddFavorite();
    mockCheckIfPokemonFav = MockCheckIfPokemonFav();
    mockDeleteFavoritePokemon = MockDeleteFavoritePokemon();
    mockPokemonUiMapper = MockPokemonUiMapper();
    mockGetFavoritePokemons = MockGetFavoritePokemons();

    sut = FavoriteCubit(
        addFavorite: mockAddFavorite,
        deleteFavorite: mockDeleteFavoritePokemon,
        checkIfPokemonFav: mockCheckIfPokemonFav,
        uiMapper: mockPokemonUiMapper,
        getFavoritePokemons: mockGetFavoritePokemons);
  });

  tearDown(() {
    sut.close();
  });
  test('initial state is FavoriteState.initial', () {
    expect(sut.state, const FavoriteState.initial());
  });

  group('Check Favorite Status', () {
    blocTest('Emit FavoriteState.error when error occur',
        build: () => sut,
        act: (FavoriteCubit sut) {
          //arrange
          when(mockCheckIfPokemonFav(any)).thenAnswer((_) async => const Left(
              AppError(AppErrorType.database, "Something went wrong")));

          //act
          sut.checkIsPokemonFavorite(1);
        },
        expect: () => [const FavError('Something went wrong')]);

    blocTest('Emit FavoriteState.isFavoriteMovie when complete',
        build: (() => sut),
        act: (FavoriteCubit sut) {
          //arrange
          when(mockCheckIfPokemonFav(any))
              .thenAnswer((_) async => const Right(true));

          //act
          sut.checkIsPokemonFavorite(1);
        },
        expect: () => [const IsFavoriteMovie(true)]);
  });

  group('Toggle Favotite', () {
    blocTest('Emit FavoriteState.isFavoriteMovie when adding to cache',
        build: () => sut,
        act: (FavoriteCubit sut) {
          //arrange
          when(mockAddFavorite(any)).thenAnswer((_) async => Right(_));
          when(mockCheckIfPokemonFav(any))
              .thenAnswer((_) async => const Right(true));
          sut.toggleFavorite(mockPokemonDetailUiObj, true);
        },
        expect: () => [const IsFavoriteMovie(true)],
        verify: (sut) {
          verify(mockAddFavorite.call(any)).called(1);
          verify(mockCheckIfPokemonFav.call(any)).called(1);
        });

    blocTest('Emit FavoriteState.isFavoriteMovie when removing from cache',
        build: () => sut,
        act: (FavoriteCubit sut) {
          //arrange
          when(mockDeleteFavoritePokemon(any))
              .thenAnswer((_) async => Right(_));
          when(mockCheckIfPokemonFav(any))
              .thenAnswer((_) async => const Right(false));
          sut.toggleFavorite(mockPokemonDetailUiObj, false);
        },
        expect: () => [const IsFavoriteMovie(false)],
        verify: (sut) {
          verify(mockDeleteFavoritePokemon.call(any)).called(1);
          verify(mockCheckIfPokemonFav.call(any)).called(1);
          verifyNever(mockAddFavorite(any));
        });
  });

  group('Get Favorites', () {
    blocTest(
        'Emit FavoriteState.favListLoaded when fetch from cache successfully',
        build: () => sut,
        act: (FavoriteCubit sut) {
          when(mockGetFavoritePokemons.call(any))
              .thenAnswer((_) async => const Right([]));
          when(mockPokemonUiMapper.maps([])).thenReturn([]);
          sut.getFavorites();
        },
        expect: () => [isA<FavListLoaded>()]);

    blocTest('Emit FavoriteState.error when exception thrown',
        build: () => sut,
        act: (FavoriteCubit sut) {
          when(mockGetFavoritePokemons.call(any))
              .thenAnswer((_) async => const Left(AppError(AppErrorType.database, '')));
          
          sut.getFavorites();
        },
        expect: () => [isA<FavError>()]);
  });
}
