part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = FavInitial;
  const factory FavoriteState.isFavoriteMovie(bool isFav) = IsFavoriteMovie;
  const factory FavoriteState.error(String errMsg) = FavError;
  const factory FavoriteState.favListLoaded(List<PokemonListUi> data) = FavListLoaded;
}
