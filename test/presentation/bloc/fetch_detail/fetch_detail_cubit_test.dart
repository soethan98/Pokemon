import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/domain/entities/app_error.dart';
import 'package:pokemon/presentation/bloc/fetch_detail/fetch_detail_cubit.dart';

import '../../../helpers/mock_obj.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late FetchDetailCubit sut;
  late MockFavoriteCubit mockFavoriteCubit;
  late MockDetailUiMapper mockDetailUiMapper;
  late MockFetchPokemon mockFetchPokemon;

  setUp(() {
    mockDetailUiMapper = MockDetailUiMapper();
    mockFavoriteCubit = MockFavoriteCubit();
    mockFetchPokemon = MockFetchPokemon();
    sut = FetchDetailCubit(
        fetchPokemon: mockFetchPokemon,
        favCubit: mockFavoriteCubit,
        uiMapper: mockDetailUiMapper);
  });
  tearDown(() {
    mockFavoriteCubit.close();
    sut.close();
  });
  test('initial state is FavoriteState.initial', () {
    expect(sut.state, const DetailStateInitial());
  });

  blocTest('Emit Error state when exception return',
      build: () => sut,
      act: (FetchDetailCubit sut) {
        when(mockFetchPokemon(any)).thenAnswer(
            (_) async => const Left(AppError(AppErrorType.api, '')));
        sut.fetchDetail(1);
      },
      verify: (sut) {
        verify(mockFavoriteCubit.checkIsPokemonFavorite(any)).called(1);
      },
      expect: () => [isA<DetailStateLoading>(), isA<DetailStateError>()]);

  blocTest('Emit Loaded state when success',
      build: () => sut,
      act: (FetchDetailCubit sut) {
        when(mockFetchPokemon.call(any))
            .thenAnswer((_) async => Right(mockPokemonDetailEntity));
        when(mockDetailUiMapper.mapItem(any))
            .thenReturn(mockPokemonDetailUiObj);
        sut.fetchDetail(1);
      },
      verify: (FetchDetailCubit cubit) {
        verify(mockFavoriteCubit.checkIsPokemonFavorite(any)).called(1);
      },
      expect: () => [const FetchDetailState.loading(), isA<DetailStateData>()]);
}
