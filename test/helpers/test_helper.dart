import 'package:mockito/annotations.dart';
import 'package:pokemon/data/local/pokemon_cache_source.dart';
import 'package:pokemon/data/mapper/pokemon_detail_mapper.dart';
import 'package:pokemon/data/mapper/pokemon_entity_mapper.dart';
import 'package:pokemon/data/network/pokemon_remote_source.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/repositories/pokemon_repository.dart';
import 'package:pokemon/domain/usecases/fetchAll/fetch_all_pokemon.dart';
import 'package:pokemon/domain/usecases/fetchPokemon/fetch_pokemon.dart';
import 'package:pokemon/domain/usecases/usecases.dart';
import 'package:pokemon/presentation/bloc/fetch_pokemons/fetch_pokemons_cubit.dart';
import 'package:pokemon/presentation/bloc/main_navbar/main_navbar_cubit.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/favorite_cubit.dart';
import 'package:pokemon/presentation/mapper/detail_ui_mapper.dart';
import 'package:pokemon/presentation/mapper/pokemon_ui_mapper.dart';

@GenerateMocks([
  CheckIfPokemonFav,
  GetFavoritePokemons,
  AddFavorite,
  DeleteFavoritePokemon,
  FetchAllPokemon,
  FetchPokemon,
  PokemonUiMapper,
  DetailUiMapper,
  PokemonEntityMapper,
  PokemonDetailMapper,
  PokemonRepository,
  PokemonRemoteSource,
  PokemonCacheSource,
  MainNavbarCubit,
  FetchPokemonsCubit,
  FavoriteCubit,
])
void main() {}
