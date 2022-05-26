// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsFavoriteMovie isFavoriteMovie(bool isFav) {
    return _IsFavoriteMovie(
      isFav,
    );
  }

  _Error error(String errMsg) {
    return _Error(
      errMsg,
    );
  }

  _FavListLoaded favListLoaded(List<PokemonListUi> data) {
    return _FavListLoaded(
      data,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> data) favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
    required TResult Function(_FavListLoaded value) favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> data) favListLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
    required TResult Function(_FavListLoaded value) favListLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsFavoriteMovieCopyWith<$Res> {
  factory _$IsFavoriteMovieCopyWith(
          _IsFavoriteMovie value, $Res Function(_IsFavoriteMovie) then) =
      __$IsFavoriteMovieCopyWithImpl<$Res>;
  $Res call({bool isFav});
}

/// @nodoc
class __$IsFavoriteMovieCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$IsFavoriteMovieCopyWith<$Res> {
  __$IsFavoriteMovieCopyWithImpl(
      _IsFavoriteMovie _value, $Res Function(_IsFavoriteMovie) _then)
      : super(_value, (v) => _then(v as _IsFavoriteMovie));

  @override
  _IsFavoriteMovie get _value => super._value as _IsFavoriteMovie;

  @override
  $Res call({
    Object? isFav = freezed,
  }) {
    return _then(_IsFavoriteMovie(
      isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsFavoriteMovie implements _IsFavoriteMovie {
  const _$_IsFavoriteMovie(this.isFav);

  @override
  final bool isFav;

  @override
  String toString() {
    return 'FavoriteState.isFavoriteMovie(isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsFavoriteMovie &&
            const DeepCollectionEquality().equals(other.isFav, isFav));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFav));

  @JsonKey(ignore: true)
  @override
  _$IsFavoriteMovieCopyWith<_IsFavoriteMovie> get copyWith =>
      __$IsFavoriteMovieCopyWithImpl<_IsFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> data) favListLoaded,
  }) {
    return isFavoriteMovie(isFav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
  }) {
    return isFavoriteMovie?.call(isFav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
    required TResult orElse(),
  }) {
    if (isFavoriteMovie != null) {
      return isFavoriteMovie(isFav);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
    required TResult Function(_FavListLoaded value) favListLoaded,
  }) {
    return isFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
  }) {
    return isFavoriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (isFavoriteMovie != null) {
      return isFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class _IsFavoriteMovie implements FavoriteState {
  const factory _IsFavoriteMovie(bool isFav) = _$_IsFavoriteMovie;

  bool get isFav;
  @JsonKey(ignore: true)
  _$IsFavoriteMovieCopyWith<_IsFavoriteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(_Error(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'FavoriteState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> data) favListLoaded,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
    required TResult Function(_FavListLoaded value) favListLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FavoriteState {
  const factory _Error(String errMsg) = _$_Error;

  String get errMsg;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FavListLoadedCopyWith<$Res> {
  factory _$FavListLoadedCopyWith(
          _FavListLoaded value, $Res Function(_FavListLoaded) then) =
      __$FavListLoadedCopyWithImpl<$Res>;
  $Res call({List<PokemonListUi> data});
}

/// @nodoc
class __$FavListLoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavListLoadedCopyWith<$Res> {
  __$FavListLoadedCopyWithImpl(
      _FavListLoaded _value, $Res Function(_FavListLoaded) _then)
      : super(_value, (v) => _then(v as _FavListLoaded));

  @override
  _FavListLoaded get _value => super._value as _FavListLoaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_FavListLoaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonListUi>,
    ));
  }
}

/// @nodoc

class _$_FavListLoaded implements _FavListLoaded {
  const _$_FavListLoaded(this.data);

  @override
  final List<PokemonListUi> data;

  @override
  String toString() {
    return 'FavoriteState.favListLoaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavListLoaded &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$FavListLoadedCopyWith<_FavListLoaded> get copyWith =>
      __$FavListLoadedCopyWithImpl<_FavListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function(String errMsg) error,
    required TResult Function(List<PokemonListUi> data) favListLoaded,
  }) {
    return favListLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
  }) {
    return favListLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function(String errMsg)? error,
    TResult Function(List<PokemonListUi> data)? favListLoaded,
    required TResult orElse(),
  }) {
    if (favListLoaded != null) {
      return favListLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
    required TResult Function(_FavListLoaded value) favListLoaded,
  }) {
    return favListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
  }) {
    return favListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    TResult Function(_FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (favListLoaded != null) {
      return favListLoaded(this);
    }
    return orElse();
  }
}

abstract class _FavListLoaded implements FavoriteState {
  const factory _FavListLoaded(List<PokemonListUi> data) = _$_FavListLoaded;

  List<PokemonListUi> get data;
  @JsonKey(ignore: true)
  _$FavListLoadedCopyWith<_FavListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
