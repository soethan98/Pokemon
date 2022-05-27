import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/domain/usecases/fetchAll/fetch_all_pokemon.dart';
import 'package:pokemon/presentation/bloc/fetch_detail/fetch_detail_cubit.dart';
import 'package:pokemon/presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart';

import '../../../helpers/mock_obj.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late FetchPokemonsCubit sut;
  late MockPokemonUiMapper mockUiMapper;
  late MockFetchAllPokemon mockFetchPokemons;

  setUp(() {
    mockUiMapper = MockPokemonUiMapper();
    mockFetchPokemons = MockFetchAllPokemon();
    sut = FetchPokemonsCubit(
        fetchAllPokemon: mockFetchPokemons, uiMapper: mockUiMapper);
  });
  tearDown(() {
    sut.close();
  });
  test('initial state is FetchPokemonsState.initial', () {
    expect(sut.state, const FetchPokemonsStateInitial());
  });

  blocTest('Emit Error state when exception return',
      build: () => sut,
      act: (FetchPokemonsCubit sut) {
        when(mockFetchPokemons(any)).thenAnswer(
            (_) async => const Left(AppError(AppErrorType.api, '')));
        sut.fetchAllPokemons();
      },
      expect: () =>
          [isA<FetchPokemonsStateLoading>(), isA<FetchPokemonsStateError>()]);

  blocTest('Emit Loaded state when success',
      build: () => sut,
      act: (FetchPokemonsCubit sut) {
        when(mockFetchPokemons.call(any))
            .thenAnswer((_) async => const Right([]));
        when(mockUiMapper.maps(any)).thenReturn([]);
        sut.fetchAllPokemons();
      },
      expect: () => [const FetchPokemonsState.loading(), isA<FetchPokemonsStateData>()]);
}
