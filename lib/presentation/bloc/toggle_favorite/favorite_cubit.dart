import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/check_if_pokemon_favorite.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/delete_favorite_pokemon.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/favorite_pokemon.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/get_favorite_pokemons.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

import '../../../domain/entities/no_params.dart';
import '../../mapper/pokemon_ui_mapper.dart';
import '../../models/pokemon_list_ui.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

@injectable
class FavoriteCubit extends Cubit<FavoriteState> {
  final AddFavorite addFavorite;
  final DeleteFavoritePokemon deleteFavorite;
  final CheckIfPokemonFav checkIfPokemonFav;
  final PokemonUiMapper uiMapper;
  final GetFavoritePokemons getFavoritePokemons;

  FavoriteCubit(
      {required this.addFavorite,
      required this.deleteFavorite,
      required this.checkIfPokemonFav,
      required this.uiMapper,
      required this.getFavoritePokemons})
      : super(const FavoriteState.initial());

  void toggleFavorite(UiPokemonDetail model, bool isFav) async {
    if (isFav) {
      await addFavorite(PokemonDetailEntity.fromUiModel(model));
    } else {
      await deleteFavorite(model.id);
    }
    final result = await checkIfPokemonFav(model.id);
    
     
    emit(result.fold((l) => FavoriteState.error(l.message),
        (r) => FavoriteState.isFavoriteMovie(r)));
  }

  void checkIsPokemonFavorite(int id) async {
    final result = await checkIfPokemonFav(id);
    emit(result.fold((l) => FavoriteState.error(l.message),
        (r) => FavoriteState.isFavoriteMovie(r)));
  }

  void getFavorites() async {
    final result = await getFavoritePokemons(NoParams());
    emit(result.fold((l) => FavoriteState.error(l.message),
        (r) => FavoriteState.favListLoaded(uiMapper.maps(r))));
  }
}
