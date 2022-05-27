// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_pokemons_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FetchPokemonsStateTearOff {
  const _$FetchPokemonsStateTearOff();

  FetchPokemonsStateInitial initial() {
    return const FetchPokemonsStateInitial();
  }

  FetchPokemonsStateLoading loading() {
    return const FetchPokemonsStateLoading();
  }

  FetchPokemonsStateError error(String errMsg) {
    return FetchPokemonsStateError(
      errMsg,
    );
  }

  FetchPokemonsStateData data(List<PokemonListUi> pokemons) {
    return FetchPokemonsStateData(
      pokemons,
    );
  }
}

/// @nodoc
const $FetchPokemonsState = _$FetchPokemonsStateTearOff();

/// @nodoc
mixin _$FetchPokemonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> pokemons) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPokemonsStateInitial value) initial,
    required TResult Function(FetchPokemonsStateLoading value) loading,
    required TResult Function(FetchPokemonsStateError value) error,
    required TResult Function(FetchPokemonsStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPokemonsStateCopyWith<$Res> {
  factory $FetchPokemonsStateCopyWith(
          FetchPokemonsState value, $Res Function(FetchPokemonsState) then) =
      _$FetchPokemonsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchPokemonsStateCopyWithImpl<$Res>
    implements $FetchPokemonsStateCopyWith<$Res> {
  _$FetchPokemonsStateCopyWithImpl(this._value, this._then);

  final FetchPokemonsState _value;
  // ignore: unused_field
  final $Res Function(FetchPokemonsState) _then;
}

/// @nodoc
abstract class $FetchPokemonsStateInitialCopyWith<$Res> {
  factory $FetchPokemonsStateInitialCopyWith(FetchPokemonsStateInitial value,
          $Res Function(FetchPokemonsStateInitial) then) =
      _$FetchPokemonsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchPokemonsStateInitialCopyWithImpl<$Res>
    extends _$FetchPokemonsStateCopyWithImpl<$Res>
    implements $FetchPokemonsStateInitialCopyWith<$Res> {
  _$FetchPokemonsStateInitialCopyWithImpl(FetchPokemonsStateInitial _value,
      $Res Function(FetchPokemonsStateInitial) _then)
      : super(_value, (v) => _then(v as FetchPokemonsStateInitial));

  @override
  FetchPokemonsStateInitial get _value =>
      super._value as FetchPokemonsStateInitial;
}

/// @nodoc

class _$FetchPokemonsStateInitial implements FetchPokemonsStateInitial {
  const _$FetchPokemonsStateInitial();

  @override
  String toString() {
    return 'FetchPokemonsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchPokemonsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> pokemons) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
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
    required TResult Function(FetchPokemonsStateInitial value) initial,
    required TResult Function(FetchPokemonsStateLoading value) loading,
    required TResult Function(FetchPokemonsStateError value) error,
    required TResult Function(FetchPokemonsStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FetchPokemonsStateInitial implements FetchPokemonsState {
  const factory FetchPokemonsStateInitial() = _$FetchPokemonsStateInitial;
}

/// @nodoc
abstract class $FetchPokemonsStateLoadingCopyWith<$Res> {
  factory $FetchPokemonsStateLoadingCopyWith(FetchPokemonsStateLoading value,
          $Res Function(FetchPokemonsStateLoading) then) =
      _$FetchPokemonsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchPokemonsStateLoadingCopyWithImpl<$Res>
    extends _$FetchPokemonsStateCopyWithImpl<$Res>
    implements $FetchPokemonsStateLoadingCopyWith<$Res> {
  _$FetchPokemonsStateLoadingCopyWithImpl(FetchPokemonsStateLoading _value,
      $Res Function(FetchPokemonsStateLoading) _then)
      : super(_value, (v) => _then(v as FetchPokemonsStateLoading));

  @override
  FetchPokemonsStateLoading get _value =>
      super._value as FetchPokemonsStateLoading;
}

/// @nodoc

class _$FetchPokemonsStateLoading implements FetchPokemonsStateLoading {
  const _$FetchPokemonsStateLoading();

  @override
  String toString() {
    return 'FetchPokemonsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchPokemonsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> pokemons) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
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
    required TResult Function(FetchPokemonsStateInitial value) initial,
    required TResult Function(FetchPokemonsStateLoading value) loading,
    required TResult Function(FetchPokemonsStateError value) error,
    required TResult Function(FetchPokemonsStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchPokemonsStateLoading implements FetchPokemonsState {
  const factory FetchPokemonsStateLoading() = _$FetchPokemonsStateLoading;
}

/// @nodoc
abstract class $FetchPokemonsStateErrorCopyWith<$Res> {
  factory $FetchPokemonsStateErrorCopyWith(FetchPokemonsStateError value,
          $Res Function(FetchPokemonsStateError) then) =
      _$FetchPokemonsStateErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class _$FetchPokemonsStateErrorCopyWithImpl<$Res>
    extends _$FetchPokemonsStateCopyWithImpl<$Res>
    implements $FetchPokemonsStateErrorCopyWith<$Res> {
  _$FetchPokemonsStateErrorCopyWithImpl(FetchPokemonsStateError _value,
      $Res Function(FetchPokemonsStateError) _then)
      : super(_value, (v) => _then(v as FetchPokemonsStateError));

  @override
  FetchPokemonsStateError get _value => super._value as FetchPokemonsStateError;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(FetchPokemonsStateError(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchPokemonsStateError implements FetchPokemonsStateError {
  const _$FetchPokemonsStateError(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'FetchPokemonsState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchPokemonsStateError &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  $FetchPokemonsStateErrorCopyWith<FetchPokemonsStateError> get copyWith =>
      _$FetchPokemonsStateErrorCopyWithImpl<FetchPokemonsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> pokemons) data,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
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
    required TResult Function(FetchPokemonsStateInitial value) initial,
    required TResult Function(FetchPokemonsStateLoading value) loading,
    required TResult Function(FetchPokemonsStateError value) error,
    required TResult Function(FetchPokemonsStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FetchPokemonsStateError implements FetchPokemonsState {
  const factory FetchPokemonsStateError(String errMsg) =
      _$FetchPokemonsStateError;

  String get errMsg;
  @JsonKey(ignore: true)
  $FetchPokemonsStateErrorCopyWith<FetchPokemonsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPokemonsStateDataCopyWith<$Res> {
  factory $FetchPokemonsStateDataCopyWith(FetchPokemonsStateData value,
          $Res Function(FetchPokemonsStateData) then) =
      _$FetchPokemonsStateDataCopyWithImpl<$Res>;
  $Res call({List<PokemonListUi> pokemons});
}

/// @nodoc
class _$FetchPokemonsStateDataCopyWithImpl<$Res>
    extends _$FetchPokemonsStateCopyWithImpl<$Res>
    implements $FetchPokemonsStateDataCopyWith<$Res> {
  _$FetchPokemonsStateDataCopyWithImpl(FetchPokemonsStateData _value,
      $Res Function(FetchPokemonsStateData) _then)
      : super(_value, (v) => _then(v as FetchPokemonsStateData));

  @override
  FetchPokemonsStateData get _value => super._value as FetchPokemonsStateData;

  @override
  $Res call({
    Object? pokemons = freezed,
  }) {
    return _then(FetchPokemonsStateData(
      pokemons == freezed
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonListUi>,
    ));
  }
}

/// @nodoc

class _$FetchPokemonsStateData implements FetchPokemonsStateData {
  const _$FetchPokemonsStateData(this.pokemons);

  @override
  final List<PokemonListUi> pokemons;

  @override
  String toString() {
    return 'FetchPokemonsState.data(pokemons: $pokemons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchPokemonsStateData &&
            const DeepCollectionEquality().equals(other.pokemons, pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pokemons));

  @JsonKey(ignore: true)
  @override
  $FetchPokemonsStateDataCopyWith<FetchPokemonsStateData> get copyWith =>
      _$FetchPokemonsStateDataCopyWithImpl<FetchPokemonsStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> pokemons) data,
  }) {
    return data(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
  }) {
    return data?.call(pokemons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> pokemons)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pokemons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPokemonsStateInitial value) initial,
    required TResult Function(FetchPokemonsStateLoading value) loading,
    required TResult Function(FetchPokemonsStateError value) error,
    required TResult Function(FetchPokemonsStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPokemonsStateInitial value)? initial,
    TResult Function(FetchPokemonsStateLoading value)? loading,
    TResult Function(FetchPokemonsStateError value)? error,
    TResult Function(FetchPokemonsStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class FetchPokemonsStateData implements FetchPokemonsState {
  const factory FetchPokemonsStateData(List<PokemonListUi> pokemons) =
      _$FetchPokemonsStateData;

  List<PokemonListUi> get pokemons;
  @JsonKey(ignore: true)
  $FetchPokemonsStateDataCopyWith<FetchPokemonsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
