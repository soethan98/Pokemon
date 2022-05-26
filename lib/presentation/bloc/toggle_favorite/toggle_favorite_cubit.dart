import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/check_if_pokemon_favorite.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/delete_favorite_pokemon.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/favorite_pokemon.dart';
import 'package:pokemon/presentation/models/pokemon_detail_ui.dart';

part 'toggle_favorite_state.dart';
part 'toggle_favorite_cubit.freezed.dart';

@injectable
class ToggleFavoriteCubit extends Cubit<ToggleFavoriteState> {
  final AddFavorite addFavorite;
  final DeleteFavoritePokemon deleteFavorite;
  final CheckIfPokemonFav checkIfPokemonFav;

  ToggleFavoriteCubit(
      {required this.addFavorite,
      required this.deleteFavorite,
      required this.checkIfPokemonFav})
      : super(const ToggleFavoriteState.initial());

  void toggleFavorite(UiPokemonDetail model, bool isFav) async {
    if (isFav) {
      await addFavorite(PokemonDetailEntity.fromUiModel(model));
    } else {
      await deleteFavorite(model.id);
    }
    final result = await checkIfPokemonFav(model.id);
    emit(result.fold((l) => const ToggleFavoriteState.error(),
        (r) => ToggleFavoriteState.isFavoriteMovie(r)));
  }

  void checkIsPokemonFavorite(int id) async {
    final result = await checkIfPokemonFav(id);
    debugPrint('fwefw');
    emit(result.fold((l) => const ToggleFavoriteState.error(),
        (r) => ToggleFavoriteState.isFavoriteMovie(r)));
  }
}
