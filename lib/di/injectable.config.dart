// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/core/api_base_helper.dart' as _i10;
import '../data/local/pokemon_cache_source.dart' as _i6;
import '../data/mapper/pokemon_detail_mapper.dart' as _i7;
import '../data/mapper/pokemon_entity_mapper.dart' as _i8;
import '../data/network/pokemon_remote_source.dart' as _i11;
import '../data/repo_impl/pokemon_repo_impl.dart' as _i13;
import '../domain/repositories/pokemon_repository.dart' as _i12;
import '../domain/usecases/favoritePokemon/check_if_pokemon_favorite.dart'
    as _i15;
import '../domain/usecases/favoritePokemon/delete_favorite_pokemon.dart'
    as _i16;
import '../domain/usecases/favoritePokemon/favorite_pokemon.dart' as _i14;
import '../domain/usecases/favoritePokemon/get_favorite_pokemons.dart' as _i20;
import '../domain/usecases/fetchAll/fetch_all_pokemon.dart' as _i17;
import '../domain/usecases/fetchPokemon/fetch_pokemon.dart' as _i18;
import '../presentation/bloc/fetch_detail/fetch_detail_cubit.dart' as _i22;
import '../presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart' as _i19;
import '../presentation/bloc/main_navbar/main_navbar_cubit.dart' as _i5;
import '../presentation/bloc/toggle_favorite/favorite_cubit.dart' as _i21;
import '../presentation/mapper/detail_ui_mapper.dart' as _i4;
import '../presentation/mapper/pokemon_ui_mapper.dart' as _i9;
import 'injectable_module.dart' as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Client>(() => injectableModule.client);
  gh.lazySingleton<_i4.DetailUiMapper>(() => _i4.DetailUiMapper());
  gh.lazySingleton<_i5.MainNavbarCubit>(() => _i5.MainNavbarCubit());
  gh.lazySingleton<_i6.PokemonCacheSource>(() => _i6.PokemonCacheSourceImpl());
  gh.lazySingleton<_i7.PokemonDetailMapper>(() => _i7.PokemonDetailMapper());
  gh.lazySingleton<_i8.PokemonEntityMapper>(() => _i8.PokemonEntityMapper());
  gh.lazySingleton<_i9.PokemonUiMapper>(() => _i9.PokemonUiMapper());
  gh.lazySingleton<_i10.ApiBaseHelper>(
      () => _i10.ApiBaseHelper(get<_i3.Client>()));
  gh.lazySingleton<_i11.PokemonRemoteSource>(() =>
      _i11.PokemonRemoteSourceImpl(apiBaseHelper: get<_i10.ApiBaseHelper>()));
  gh.lazySingleton<_i12.PokemonRepository>(() => _i13.PokemonRepoImpl(
      pokemonRemoteSource: get<_i11.PokemonRemoteSource>(),
      pokemonEntityMapper: get<_i8.PokemonEntityMapper>(),
      pokemonDetailMapper: get<_i7.PokemonDetailMapper>(),
      pokemonCacheSource: get<_i6.PokemonCacheSource>()));
  gh.lazySingleton<_i14.AddFavorite>(
      () => _i14.AddFavorite(repository: get<_i12.PokemonRepository>()));
  gh.lazySingleton<_i15.CheckIfPokemonFav>(
      () => _i15.CheckIfPokemonFav(repository: get<_i12.PokemonRepository>()));
  gh.lazySingleton<_i16.DeleteFavoritePokemon>(() =>
      _i16.DeleteFavoritePokemon(repository: get<_i12.PokemonRepository>()));
  gh.lazySingleton<_i17.FetchAllPokemon>(
      () => _i17.FetchAllPokemon(repository: get<_i12.PokemonRepository>()));
  gh.lazySingleton<_i18.FetchPokemon>(
      () => _i18.FetchPokemon(repository: get<_i12.PokemonRepository>()));
  gh.factory<_i19.FetchPokemonsCubit>(() => _i19.FetchPokemonsCubit(
      fetchAllPokemon: get<_i17.FetchAllPokemon>(),
      uiMapper: get<_i9.PokemonUiMapper>()));
  gh.lazySingleton<_i20.GetFavoritePokemons>(() =>
      _i20.GetFavoritePokemons(repository: get<_i12.PokemonRepository>()));
  gh.factory<_i21.FavoriteCubit>(() => _i21.FavoriteCubit(
      addFavorite: get<_i14.AddFavorite>(),
      deleteFavorite: get<_i16.DeleteFavoritePokemon>(),
      checkIfPokemonFav: get<_i15.CheckIfPokemonFav>(),
      uiMapper: get<_i9.PokemonUiMapper>(),
      getFavoritePokemons: get<_i20.GetFavoritePokemons>()));
  gh.factory<_i22.FetchDetailCubit>(() => _i22.FetchDetailCubit(
      fetchPokemon: get<_i18.FetchPokemon>(),
      favCubit: get<_i21.FavoriteCubit>(),
      uiMapper: get<_i4.DetailUiMapper>()));
  return get;
}

class _$InjectableModule extends _i23.InjectableModule {}
