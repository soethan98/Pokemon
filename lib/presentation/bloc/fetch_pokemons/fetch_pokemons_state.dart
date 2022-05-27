part of 'fetch_pokemons_cubit.dart';

@freezed
class FetchPokemonsState with _$FetchPokemonsState {
  const factory FetchPokemonsState.initial() = FetchPokemonsStateInitial;
  const factory FetchPokemonsState.loading() = FetchPokemonsStateLoading;
  const factory FetchPokemonsState.error(String errMsg) = FetchPokemonsStateError;
  const factory FetchPokemonsState.data(List<PokemonListUi> pokemons) = FetchPokemonsStateData;
}
