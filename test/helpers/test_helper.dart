import 'package:mockito/annotations.dart';
import 'package:pokemon/domain/usecases/usecases.dart';
import 'package:pokemon/presentation/mapper/pokemon_ui_mapper.dart';


@GenerateMocks([
  CheckIfPokemonFav,
  GetFavoritePokemons,
  AddFavorite,
  DeleteFavoritePokemon,
  PokemonUiMapper
])
void main() {}

