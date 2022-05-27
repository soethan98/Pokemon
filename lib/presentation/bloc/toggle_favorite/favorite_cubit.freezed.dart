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

  FavInitial initial() {
    return const FavInitial();
  }

  IsFavoriteMovie isFavoriteMovie(bool isFav) {
    return IsFavoriteMovie(
      isFav,
    );
  }

  FavError error(String errMsg) {
    return FavError(
      errMsg,
    );
  }

  FavListLoaded favListLoaded(List<PokemonListUi> data) {
    return FavListLoaded(
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
    required TResult Function(FavInitial value) initial,
    required TResult Function(IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(FavError value) error,
    required TResult Function(FavListLoaded value) favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
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
abstract class $FavInitialCopyWith<$Res> {
  factory $FavInitialCopyWith(
          FavInitial value, $Res Function(FavInitial) then) =
      _$FavInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavInitialCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavInitialCopyWith<$Res> {
  _$FavInitialCopyWithImpl(FavInitial _value, $Res Function(FavInitial) _then)
      : super(_value, (v) => _then(v as FavInitial));

  @override
  FavInitial get _value => super._value as FavInitial;
}

/// @nodoc

class _$FavInitial implements FavInitial {
  const _$FavInitial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavInitial);
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
    required TResult Function(FavInitial value) initial,
    required TResult Function(IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(FavError value) error,
    required TResult Function(FavListLoaded value) favListLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavInitial implements FavoriteState {
  const factory FavInitial() = _$FavInitial;
}

/// @nodoc
abstract class $IsFavoriteMovieCopyWith<$Res> {
  factory $IsFavoriteMovieCopyWith(
          IsFavoriteMovie value, $Res Function(IsFavoriteMovie) then) =
      _$IsFavoriteMovieCopyWithImpl<$Res>;
  $Res call({bool isFav});
}

/// @nodoc
class _$IsFavoriteMovieCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $IsFavoriteMovieCopyWith<$Res> {
  _$IsFavoriteMovieCopyWithImpl(
      IsFavoriteMovie _value, $Res Function(IsFavoriteMovie) _then)
      : super(_value, (v) => _then(v as IsFavoriteMovie));

  @override
  IsFavoriteMovie get _value => super._value as IsFavoriteMovie;

  @override
  $Res call({
    Object? isFav = freezed,
  }) {
    return _then(IsFavoriteMovie(
      isFav == freezed
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsFavoriteMovie implements IsFavoriteMovie {
  const _$IsFavoriteMovie(this.isFav);

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
            other is IsFavoriteMovie &&
            const DeepCollectionEquality().equals(other.isFav, isFav));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFav));

  @JsonKey(ignore: true)
  @override
  $IsFavoriteMovieCopyWith<IsFavoriteMovie> get copyWith =>
      _$IsFavoriteMovieCopyWithImpl<IsFavoriteMovie>(this, _$identity);

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
    required TResult Function(FavInitial value) initial,
    required TResult Function(IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(FavError value) error,
    required TResult Function(FavListLoaded value) favListLoaded,
  }) {
    return isFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
  }) {
    return isFavoriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (isFavoriteMovie != null) {
      return isFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class IsFavoriteMovie implements FavoriteState {
  const factory IsFavoriteMovie(bool isFav) = _$IsFavoriteMovie;

  bool get isFav;
  @JsonKey(ignore: true)
  $IsFavoriteMovieCopyWith<IsFavoriteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavErrorCopyWith<$Res> {
  factory $FavErrorCopyWith(FavError value, $Res Function(FavError) then) =
      _$FavErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class _$FavErrorCopyWithImpl<$Res> extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavErrorCopyWith<$Res> {
  _$FavErrorCopyWithImpl(FavError _value, $Res Function(FavError) _then)
      : super(_value, (v) => _then(v as FavError));

  @override
  FavError get _value => super._value as FavError;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(FavError(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavError implements FavError {
  const _$FavError(this.errMsg);

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
            other is FavError &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  $FavErrorCopyWith<FavError> get copyWith =>
      _$FavErrorCopyWithImpl<FavError>(this, _$identity);

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
    required TResult Function(FavInitial value) initial,
    required TResult Function(IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(FavError value) error,
    required TResult Function(FavListLoaded value) favListLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavError implements FavoriteState {
  const factory FavError(String errMsg) = _$FavError;

  String get errMsg;
  @JsonKey(ignore: true)
  $FavErrorCopyWith<FavError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavListLoadedCopyWith<$Res> {
  factory $FavListLoadedCopyWith(
          FavListLoaded value, $Res Function(FavListLoaded) then) =
      _$FavListLoadedCopyWithImpl<$Res>;
  $Res call({List<PokemonListUi> data});
}

/// @nodoc
class _$FavListLoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavListLoadedCopyWith<$Res> {
  _$FavListLoadedCopyWithImpl(
      FavListLoaded _value, $Res Function(FavListLoaded) _then)
      : super(_value, (v) => _then(v as FavListLoaded));

  @override
  FavListLoaded get _value => super._value as FavListLoaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(FavListLoaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonListUi>,
    ));
  }
}

/// @nodoc

class _$FavListLoaded implements FavListLoaded {
  const _$FavListLoaded(this.data);

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
            other is FavListLoaded &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $FavListLoadedCopyWith<FavListLoaded> get copyWith =>
      _$FavListLoadedCopyWithImpl<FavListLoaded>(this, _$identity);

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
    required TResult Function(FavInitial value) initial,
    required TResult Function(IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(FavError value) error,
    required TResult Function(FavListLoaded value) favListLoaded,
  }) {
    return favListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
  }) {
    return favListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavInitial value)? initial,
    TResult Function(IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(FavError value)? error,
    TResult Function(FavListLoaded value)? favListLoaded,
    required TResult orElse(),
  }) {
    if (favListLoaded != null) {
      return favListLoaded(this);
    }
    return orElse();
  }
}

abstract class FavListLoaded implements FavoriteState {
  const factory FavListLoaded(List<PokemonListUi> data) = _$FavListLoaded;

  List<PokemonListUi> get data;
  @JsonKey(ignore: true)
  $FavListLoadedCopyWith<FavListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
