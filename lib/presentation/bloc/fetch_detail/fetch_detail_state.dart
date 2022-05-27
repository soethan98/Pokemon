part of 'fetch_detail_cubit.dart';

@freezed
class FetchDetailState with _$FetchDetailState {
  const factory FetchDetailState.initial() = DetailStateInitial;
  const factory FetchDetailState.loading() = DetailStateLoading;
  const factory FetchDetailState.error(String errMsg) = DetailStateError;
  const factory FetchDetailState.data(UiPokemonDetail pokemon) = DetailStateData;
}
