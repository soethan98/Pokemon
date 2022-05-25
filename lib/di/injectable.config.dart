// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/core/api_base_helper.dart' as _i7;
import '../data/mapper/pokemon_entity_mapper.dart' as _i5;
import '../data/network/pokemon_remote_source.dart' as _i8;
import '../data/repo_impl/pokemon_repo_impl.dart' as _i10;
import '../domain/repositories/pokemon_repository.dart' as _i9;
import '../domain/usecases/fetchAll/fetch_all_pokemon.dart' as _i11;
import '../presentation/bloc/cubit/fetch_pokemons_cubit.dart' as _i12;
import '../presentation/bloc/main_navbar/main_navbar_cubit.dart' as _i4;
import '../presentation/mapper/pokemon_ui_mapper.dart' as _i6;
import 'injectable_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Client>(() => injectableModule.client);
  gh.lazySingleton<_i4.MainNavbarCubit>(() => _i4.MainNavbarCubit());
  gh.lazySingleton<_i5.PokemonEntityMapper>(() => _i5.PokemonEntityMapper());
  gh.lazySingleton<_i6.PokemonUiMapper>(() => _i6.PokemonUiMapper());
  gh.lazySingleton<_i7.ApiBaseHelper>(
      () => _i7.ApiBaseHelper(get<_i3.Client>()));
  gh.lazySingleton<_i8.PokemonRemoteSource>(() =>
      _i8.PokemonRemoteSourceImpl(apiBaseHelper: get<_i7.ApiBaseHelper>()));
  gh.lazySingleton<_i9.PokemonRepository>(() => _i10.PokemonRepoImpl(
      pokemonRemoteSource: get<_i8.PokemonRemoteSource>(),
      pokemonEntityMapper: get<_i5.PokemonEntityMapper>()));
  gh.lazySingleton<_i11.FetchAllPokemon>(
      () => _i11.FetchAllPokemon(repository: get<_i9.PokemonRepository>()));
  gh.factory<_i12.FetchPokemonsCubit>(() => _i12.FetchPokemonsCubit(
      fetchAllPokemon: get<_i11.FetchAllPokemon>(),
      uiMapper: get<_i6.PokemonUiMapper>()));
  return get;
}

class _$InjectableModule extends _i13.InjectableModule {}
