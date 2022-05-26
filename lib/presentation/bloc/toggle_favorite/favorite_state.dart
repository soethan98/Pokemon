part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.isFavoriteMovie(bool isFav) = _IsFavoriteMovie;
  const factory FavoriteState.error(String errMsg) = _Error;
  const factory FavoriteState.favListLoaded(List<PokemonListUi> data) = _FavListLoaded;
}
