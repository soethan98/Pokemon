import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/di/injectable.dart';
import 'package:pokemon/presentation/bloc/cubit/fetch_detail_cubit.dart';
import 'package:pokemon/presentation/common/widgets/error_launcher.dart';
import 'package:pokemon/presentation/journey/detail/detail_backdrop_widget.dart';
import 'package:pokemon/presentation/journey/detail/pokemon_about.dart';

class PokemonDetailScreen extends StatefulWidget {
  final int pokemonId;

  const PokemonDetailScreen({Key? key, required this.pokemonId})
      : super(key: key);

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  late FetchDetailCubit detailCubit;

  @override
  void initState() {
    super.initState();
    detailCubit = getItInstance<FetchDetailCubit>();
    detailCubit.fetchDetail(widget.pokemonId);
  }

  @override
  void dispose() {
    detailCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: detailCubit,
      child: Builder(builder: (ctx) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
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
