part of 'fetch_pokemons_cubit.dart';

@freezed
class FetchPokemonsState with _$FetchPokemonsState {
  const factory FetchPokemonsState.initial() = _Initial;
  const factory FetchPokemonsState.loading() = _Loading;
  const factory FetchPokemonsState.error(String errMsg) = _Error;
  const factory FetchPokemonsState.data(List<PokemonListUi> pokemons) = _Data;
}
