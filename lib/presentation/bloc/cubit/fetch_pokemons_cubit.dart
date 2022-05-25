import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/no_params.dart';
import 'package:pokemon/domain/usecases/fetchAll/fetch_all_pokemon.dart';
import 'package:pokemon/presentation/mapper/pokemon_ui_mapper.dart';

import '../../models/pokemon_list_ui.dart';

part 'fetch_pokemons_state.dart';
part 'fetch_pokemons_cubit.freezed.dart';

@injectable
class FetchPokemonsCubit extends Cubit<FetchPokemonsState> {
  final FetchAllPokemon fetchAllPokemon;
  final PokemonUiMapper uiMapper;
  FetchPokemonsCubit({required this.fetchAllPokemon, required this.uiMapper})
      : super(const FetchPokemonsState.initial());

  fetchAllPokemons() async {
    emit(const FetchPokemonsState.loading());
    final result = await fetchAllPokemon(NoParams());

    emit(result.fold((l) => FetchPokemonsState.error(l.message),
        (r) => FetchPokemonsState.data(uiMapper.maps(r))));
  }
}
