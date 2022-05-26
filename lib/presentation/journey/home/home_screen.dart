import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/presentation/common/widgets/error_launcher.dart';
import 'package:pokemon/presentation/common/widgets/pokemon_item_card.dart';
import 'package:pokemon/presentation/models/pokemon_list_ui.dart';
import 'package:pokemon/presentation/utils/route_constants.dart';

import '../../bloc/fetch_pokemons/fetch_pokemons_cubit.dart';
import '../../utils/size_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<FetchPokemonsCubit>().fetchAllPokemons();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPokemonsCubit, FetchPokemonsState>(
      builder: (context, state) {
        return state.maybeWhen(
            error: (errMsg) => ErrorLauncher(error: errMsg),
            data: (result) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: Sizes.dimen_8,
                  crossAxisSpacing: Sizes.dimen_8,
                  children: result
                      .map((e) => PokemonItemCard(
                            pokemonListUi: e,
                            onItemClick: () {
                              Navigator.pushNamed(context, RouteList.detail,
                                  arguments: e.number);
                            },
                          ))
                      .toList(),
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ));
      },
    );
  }
}
