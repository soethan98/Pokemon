import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/presentation/common/widgets/pokemon_list_builder.dart';

import '../../../di/injectable.dart';
import '../../bloc/toggle_favorite/favorite_cubit.dart';
import '../../common/widgets/error_launcher.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late FavoriteCubit _favoriteBloc;

  @override
  void initState() {
    super.initState();
    _favoriteBloc = getItInstance<FavoriteCubit>();
    _favoriteBloc.getFavorites();
  }

  @override
  void dispose() {
    _favoriteBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _favoriteBloc,
      child: Builder(builder: (context) {
        return BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            return state.maybeWhen(
              error: (msg) => ErrorLauncher(error: msg),
              favListLoaded: (result) {
                return PokemonListBuilder(result: result);
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        );
      }),
    );
  }
}
