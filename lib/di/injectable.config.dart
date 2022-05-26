// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/core/api_base_helper.dart' as _i9;
import '../data/mapper/pokemon_detail_mapper.dart' as _i6;
import '../data/mapper/pokemon_entity_mapper.dart' as _i7;
import '../data/network/pokemon_remote_source.dart' as _i10;
import '../data/repo_impl/pokemon_repo_impl.dart' as _i12;
import '../domain/repositories/pokemon_repository.dart' as _i11;
import '../domain/usecases/fetchAll/fetch_all_pokemon.dart' as _i13;
import '../domain/usecases/fetchPokemon/fetch_pokemon.dart' as _i14;
import '../presentation/bloc/cubit/fetch_detail_cubit.dart' as _i16;
import '../presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart' as _i15;
import '../presentation/bloc/main_navbar/main_navbar_cubit.dart' as _i5;
import '../presentation/mapper/detail_ui_mapper.dart' as _i4;
import '../presentation/mapper/pokemon_ui_mapper.dart' as _i8;
import 'injectable_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Client>(() => injectableModule.client);
  gh.lazySingleton<_i4.DetailUiMapper>(() => _i4.DetailUiMapper());
  gh.lazySingleton<_i5.MainNavbarCubit>(() => _i5.MainNavbarCubit());
  gh.lazySingleton<_i6.PokemonDetailMapper>(() => _i6.PokemonDetailMapper());
  gh.lazySingleton<_i7.PokemonEntityMapper>(() => _i7.PokemonEntityMapper());
  gh.lazySingleton<_i8.PokemonUiMapper>(() => _i8.PokemonUiMapper());
  gh.lazySingleton<_i9.ApiBaseHelper>(
      () => _i9.ApiBaseHelper(get<_i3.Client>()));
  gh.lazySingleton<_i10.PokemonRemoteSource>(() =>
      _i10.PokemonRemoteSourceImpl(apiBaseHelper: get<_i9.ApiBaseHelper>()));
  gh.lazySingleton<_i11.PokemonRepository>(() => _i12.PokemonRepoImpl(
      pokemonRemoteSource: get<_i10.PokemonRemoteSource>(),
      pokemonEntityMapper: get<_i7.PokemonEntityMapper>(),
      pokemonDetailMapper: get<_i6.PokemonDetailMapper>()));
  gh.lazySingleton<_i13.FetchAllPokemon>(
      () => _i13.FetchAllPokemon(repository: get<_i11.PokemonRepository>()));
  gh.lazySingleton<_i14.FetchPokemon>(
      () => _i14.FetchPokemon(repository: get<_i11.PokemonRepository>()));
  gh.factory<_i15.FetchPokemonsCubit>(() => _i15.FetchPokemonsCubit(
      fetchAllPokemon: get<_i13.FetchAllPokemon>(),
      uiMapper: get<_i8.PokemonUiMapper>()));
  gh.factory<_i16.FetchDetailCubit>(() => _i16.FetchDetailCubit(
      fetchPokemon: get<_i14.FetchPokemon>(),
      uiMapper: get<_i4.DetailUiMapper>()));
  return get;
}

class _$InjectableModule extends _i17.InjectableModule {}
