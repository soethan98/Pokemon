// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchDetailStateTearOff {
  const _$FetchDetailStateTearOff();

  DetailStateInitial initial() {
    return const DetailStateInitial();
  }

  DetailStateLoading loading() {
    return const DetailStateLoading();
  }

  DetailStateError error(String errMsg) {
    return DetailStateError(
      errMsg,
    );
  }

  DetailStateData data(UiPokemonDetail pokemon) {
    return DetailStateData(
      pokemon,
    );
  }
}

/// @nodoc
const $FetchDetailState = _$FetchDetailStateTearOff();

/// @nodoc
mixin _$FetchDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(UiPokemonDetail pokemon) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailStateInitial value) initial,
    required TResult Function(DetailStateLoading value) loading,
    required TResult Function(DetailStateError value) error,
    required TResult Function(DetailStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchDetailStateCopyWith<$Res> {
  factory $FetchDetailStateCopyWith(
          FetchDetailState value, $Res Function(FetchDetailState) then) =
      _$FetchDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchDetailStateCopyWithImpl<$Res>
    implements $FetchDetailStateCopyWith<$Res> {
  _$FetchDetailStateCopyWithImpl(this._value, this._then);

  final FetchDetailState _value;
  // ignore: unused_field
  final $Res Function(FetchDetailState) _then;
}

/// @nodoc
abstract class $DetailStateInitialCopyWith<$Res> {
  factory $DetailStateInitialCopyWith(
          DetailStateInitial value, $Res Function(DetailStateInitial) then) =
      _$DetailStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailStateInitialCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res>
    implements $DetailStateInitialCopyWith<$Res> {
  _$DetailStateInitialCopyWithImpl(
      DetailStateInitial _value, $Res Function(DetailStateInitial) _then)
      : super(_value, (v) => _then(v as DetailStateInitial));

  @override
  DetailStateInitial get _value => super._value as DetailStateInitial;
}

/// @nodoc

class _$DetailStateInitial implements DetailStateInitial {
  const _$DetailStateInitial();

  @override
  String toString() {
    return 'FetchDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DetailStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(UiPokemonDetail pokemon) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailStateInitial value) initial,
    required TResult Function(DetailStateLoading value) loading,
    required TResult Function(DetailStateError value) error,
    required TResult Function(DetailStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DetailStateInitial implements FetchDetailState {
  const factory DetailStateInitial() = _$DetailStateInitial;
}

/// @nodoc
abstract class $DetailStateLoadingCopyWith<$Res> {
  factory $DetailStateLoadingCopyWith(
          DetailStateLoading value, $Res Function(DetailStateLoading) then) =
      _$DetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailStateLoadingCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res>
    implements $DetailStateLoadingCopyWith<$Res> {
  _$DetailStateLoadingCopyWithImpl(
      DetailStateLoading _value, $Res Function(DetailStateLoading) _then)
      : super(_value, (v) => _then(v as DetailStateLoading));

  @override
  DetailStateLoading get _value => super._value as DetailStateLoading;
}

/// @nodoc

class _$DetailStateLoading implements DetailStateLoading {
  const _$DetailStateLoading();

  @override
  String toString() {
    return 'FetchDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(UiPokemonDetail pokemon) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailStateInitial value) initial,
    required TResult Function(DetailStateLoading value) loading,
    required TResult Function(DetailStateError value) error,
    required TResult Function(DetailStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DetailStateLoading implements FetchDetailState {
  const factory DetailStateLoading() = _$DetailStateLoading;
}

/// @nodoc
abstract class $DetailStateErrorCopyWith<$Res> {
  factory $DetailStateErrorCopyWith(
          DetailStateError value, $Res Function(DetailStateError) then) =
      _$DetailStateErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class _$DetailStateErrorCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res>
    implements $DetailStateErrorCopyWith<$Res> {
  _$DetailStateErrorCopyWithImpl(
      DetailStateError _value, $Res Function(DetailStateError) _then)
      : super(_value, (v) => _then(v as DetailStateError));

  @override
  DetailStateError get _value => super._value as DetailStateError;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(DetailStateError(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailStateError implements DetailStateError {
  const _$DetailStateError(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'FetchDetailState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailStateError &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  $DetailStateErrorCopyWith<DetailStateError> get copyWith =>
      _$DetailStateErrorCopyWithImpl<DetailStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(UiPokemonDetail pokemon) data,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailStateInitial value) initial,
    required TResult Function(DetailStateLoading value) loading,
    required TResult Function(DetailStateError value) error,
    required TResult Function(DetailStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DetailStateError implements FetchDetailState {
  const factory DetailStateError(String errMsg) = _$DetailStateError;

  String get errMsg;
  @JsonKey(ignore: true)
  $DetailStateErrorCopyWith<DetailStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateDataCopyWith<$Res> {
  factory $DetailStateDataCopyWith(
          DetailStateData value, $Res Function(DetailStateData) then) =
      _$DetailStateDataCopyWithImpl<$Res>;
  $Res call({UiPokemonDetail pokemon});
}

/// @nodoc
class _$DetailStateDataCopyWithImpl<$Res>
    extends _$FetchDetailStateCopyWithImpl<$Res>
    implements $DetailStateDataCopyWith<$Res> {
  _$DetailStateDataCopyWithImpl(
      DetailStateData _value, $Res Function(DetailStateData) _then)
      : super(_value, (v) => _then(v as DetailStateData));

  @override
  DetailStateData get _value => super._value as DetailStateData;

  @override
  $Res call({
    Object? pokemon = freezed,
  }) {
    return _then(DetailStateData(
      pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as UiPokemonDetail,
    ));
  }
}

/// @nodoc

class _$DetailStateData implements DetailStateData {
  const _$DetailStateData(this.pokemon);

  @override
  final UiPokemonDetail pokemon;

  @override
  String toString() {
    return 'FetchDetailState.data(pokemon: $pokemon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailStateData &&
            const DeepCollectionEquality().equals(other.pokemon, pokemon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemon));

  @JsonKey(ignore: true)
  @override
  $DetailStateDataCopyWith<DetailStateData> get copyWith =>
      _$DetailStateDataCopyWithImpl<DetailStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(UiPokemonDetail pokemon) data,
  }) {
    return data(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
  }) {
    return data?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(UiPokemonDetail pokemon)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DetailStateInitial value) initial,
    required TResult Function(DetailStateLoading value) loading,
    required TResult Function(DetailStateError value) error,
    required TResult Function(DetailStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DetailStateInitial value)? initial,
    TResult Function(DetailStateLoading value)? loading,
    TResult Function(DetailStateError value)? error,
    TResult Function(DetailStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DetailStateData implements FetchDetailState {
  const factory DetailStateData(UiPokemonDetail pokemon) = _$DetailStateData;

  UiPokemonDetail get pokemon;
  @JsonKey(ignore: true)
  $DetailStateDataCopyWith<DetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
