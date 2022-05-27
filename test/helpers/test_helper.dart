import 'package:mockito/annotations.dart';
import 'package:pokemon/domain/usecases/fetchPokemon/fetch_pokemon.dart';
import 'package:pokemon/domain/usecases/usecases.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/favorite_cubit.dart';
import 'package:pokemon/presentation/mapper/detail_ui_mapper.dart';
import 'package:pokemon/presentation/mapper/pokemon_ui_mapper.dart';


@GenerateMocks([
  CheckIfPokemonFav,
  GetFavoritePokemons,
  AddFavorite,
  DeleteFavoritePokemon,
  PokemonUiMapper,
  FetchPokemon,
  DetailUiMapper,
  FavoriteCubit
])
void main() {}


