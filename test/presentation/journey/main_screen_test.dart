import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:pokemon/presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart';
import 'package:pokemon/presentation/bloc/main_navbar/main_navbar_cubit.dart';
import 'package:pokemon/presentation/journey/favorite/favorite_screen.dart';
import 'package:pokemon/presentation/journey/home/home_screen.dart';
import 'package:pokemon/presentation/journey/main/main_screen.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockMainNavbarCubit mockNavBarCubit;
  late MockFetchPokemonsCubit mockFetchPokemonsCubit;

  setUp(() {
    mockNavBarCubit = MockMainNavbarCubit();
    mockFetchPokemonsCubit = MockFetchPokemonsCubit();
    configureDependencies();

    getItInstance.allowReassignment = true;

    getItInstance.registerFactory<MainNavbarCubit>(() => mockNavBarCubit);
    getItInstance
        .registerFactory<FetchPokemonsCubit>(() => mockFetchPokemonsCubit);
    configureDependencies();
  });
  testWidgets('Should display BottomNavigationBar and appBar',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: MainScreen()));
    expect(find.byType(BottomNavigationBar), findsOneWidget);
    expect(find.byKey(const Key('appbar_title')), findsOneWidget);
  });

  testWidgets('Should display correct home page', (WidgetTester tester) async {
    when(mockNavBarCubit.state).thenAnswer(
        (_) => const MainNavbarState(page: NavigationBarEvent.HOME, index: 0));

    await tester.pumpWidget(const MaterialApp(home: MainScreen()));
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  tearDown(() {
    mockFetchPokemonsCubit.close();
    mockNavBarCubit.close();
  });
}
