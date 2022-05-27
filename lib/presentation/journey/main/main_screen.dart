import 'package:flutter/material.dart';
import 'package:pokemon/data/network/pokemon_remote_source.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/presentation/bloc/main_navbar/main_navbar_cubit.dart';
import 'package:pokemon/presentation/journey/favorite/favorite_screen.dart';
import 'package:pokemon/presentation/journey/main/main_bottom_navigation.dart';

import '../../../domain/repositories/pokemon_repository.dart';
import '../../bloc/fetch_pokemons/fetch_pokemons_cubit.dart';
import '../../bloc/toggle_favorite/favorite_cubit.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late MainNavbarCubit mainNavbarCubit;
  late FetchPokemonsCubit fetchPokemonsCubit;
  late FavoriteCubit favoriteCubit;

  @override
  void initState() {
    super.initState();
    mainNavbarCubit = getItInstance<MainNavbarCubit>();
    fetchPokemonsCubit = getItInstance<FetchPokemonsCubit>();
  }

  @override
  void dispose() {
    mainNavbarCubit.close();
    fetchPokemonsCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider.value(value: mainNavbarCubit),
          BlocProvider.value(value: fetchPokemonsCubit),
        ],
        child: BlocBuilder<MainNavbarCubit, MainNavbarState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text('Pokemon'),
                ),
                body: currentScreen(state.index),
                bottomNavigationBar: MainBottomNavigationBar(
                    selectedIndex: state.index,
                    onSelectedIndexChange: (index) {
                      context.read<MainNavbarCubit>().selectPage(index);
                    }));
          },
        ));
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const FavoriteScreen();
      default:
        return const HomeScreen();
    }
  }
}
