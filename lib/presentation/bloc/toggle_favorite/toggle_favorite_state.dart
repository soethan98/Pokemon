part of 'toggle_favorite_cubit.dart';

@freezed
class ToggleFavoriteState with _$ToggleFavoriteState {
  const factory ToggleFavoriteState.initial() = _Initial;
  const factory ToggleFavoriteState.isFavoriteMovie(bool isFav) = _IsFavoriteMovie;
  const factory ToggleFavoriteState.error() = _Error;
}
