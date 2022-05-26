import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/toggle_favorite_cubit.dart';
import 'package:pokemon/presentation/common/widgets/error_launcher.dart';
import 'package:pokemon/presentation/journey/detail/detail_appbar.dart';
import 'package:pokemon/presentation/journey/detail/detail_backdrop_widget.dart';
import 'package:pokemon/presentation/journey/detail/pokemon_about.dart';

import '../../bloc/fetch_detail/fetch_detail_cubit.dart';

class PokemonDetailScreen extends StatefulWidget {
  final int pokemonId;

  const PokemonDetailScreen({Key? key, required this.pokemonId})
      : super(key: key);

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  late FetchDetailCubit detailCubit;
  late ToggleFavoriteCubit favoriteCubit;

  @override
  void initState() {
    super.initState();
    detailCubit = getItInstance<FetchDetailCubit>();
    favoriteCubit = detailCubit.favCubit;
    detailCubit.fetchDetail(widget.pokemonId);
  }

  @override
  void dispose() {
    detailCubit.close();
    favoriteCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: detailCubit,
        ),
        BlocProvider.value(
          value: favoriteCubit,
        ),
      ],
      child: Builder(builder: (ctx) {
        return Scaffold(
          body: BlocBuilder<FetchDetailCubit, FetchDetailState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  error: (msg) => ErrorLauncher(error: msg),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                  data: (data) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        FractionallySizedBox(
                          heightFactor: 0.4,
                          alignment: Alignment.topCenter,
                          child: DetailBackdropWidget(
                            data: data,
                          ),
                        ),
                        FractionallySizedBox(
                          heightFactor: 0.6,
                          alignment: Alignment.bottomCenter,
                          child: PokemonAbout(
                            data: data,
                          ),
                        ),
                      ],
                    );
                  });
            },
          ),
        );
      }),
    );
  }
}
