import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/domain/usecases/favoritePokemon/check_if_pokemon_favorite.dart';
import 'package:pokemon/presentation/bloc/toggle_favorite/favorite_cubit.dart';
import 'package:pokemon/presentation/mapper/detail_ui_mapper.dart';

import '../../../domain/usecases/fetchPokemon/fetch_pokemon.dart';
import '../../models/pokemon_detail_ui.dart';

part 'fetch_detail_state.dart';
part 'fetch_detail_cubit.freezed.dart';

@injectable
class FetchDetailCubit extends Cubit<FetchDetailState> {
  final DetailUiMapper uiMapper;
  final FetchPokemon fetchPokemon;
  final FavoriteCubit favCubit;
  FetchDetailCubit(
      {required this.fetchPokemon,
      required this.favCubit,
      required this.uiMapper})
      : super(const FetchDetailState.initial());

  fetchDetail(int id) async {
    emit(const FetchDetailState.loading());
    final result = await fetchPokemon(id);

    emit(result.fold((l) => FetchDetailState.error(l.message),
        (r) => FetchDetailState.data(uiMapper.mapItem(r))));

    favCubit.checkIsPokemonFavorite(id);
  }
}
