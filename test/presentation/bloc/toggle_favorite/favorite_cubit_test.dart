import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/favorite_cubit.dart';

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
  });
}
