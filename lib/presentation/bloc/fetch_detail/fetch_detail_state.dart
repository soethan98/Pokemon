part of 'fetch_detail_cubit.dart';

@freezed
class FetchDetailState with _$FetchDetailState {
  const factory FetchDetailState.initial() = _Initial;
  const factory FetchDetailState.loading() = _Loading;
  const factory FetchDetailState.error(String errMsg) = _Error;
  const factory FetchDetailState.data(UiPokemonDetail pokemon) = _Data;
}
