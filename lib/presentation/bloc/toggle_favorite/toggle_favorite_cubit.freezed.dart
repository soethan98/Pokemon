// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'toggle_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ToggleFavoriteStateTearOff {
  const _$ToggleFavoriteStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _IsFavoriteMovie isFavoriteMovie(bool isFav) {
    return _IsFavoriteMovie(
      isFav,
    );
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $ToggleFavoriteState = _$ToggleFavoriteStateTearOff();

/// @nodoc
mixin _$ToggleFavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleFavoriteStateCopyWith<$Res> {
  factory $ToggleFavoriteStateCopyWith(
          ToggleFavoriteState value, $Res Function(ToggleFavoriteState) then) =
      _$ToggleFavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleFavoriteStateCopyWithImpl<$Res>
    implements $ToggleFavoriteStateCopyWith<$Res> {
  _$ToggleFavoriteStateCopyWithImpl(this._value, this._then);

  final ToggleFavoriteState _value;
  // ignore: unused_field
  final $Res Function(ToggleFavoriteState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ToggleFavoriteStateCopyWithImpl<$Res>
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
    return 'ToggleFavoriteState.initial()';
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
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ToggleFavoriteState {
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
    extends _$ToggleFavoriteStateCopyWithImpl<$Res>
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
    return 'ToggleFavoriteState.isFavoriteMovie(isFav: $isFav)';
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
    required TResult Function() error,
  }) {
    return isFavoriteMovie(isFav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
  }) {
    return isFavoriteMovie?.call(isFav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
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
  }) {
    return isFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
  }) {
    return isFavoriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (isFavoriteMovie != null) {
      return isFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class _IsFavoriteMovie implements ToggleFavoriteState {
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
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ToggleFavoriteStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'ToggleFavoriteState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFav) isFavoriteMovie,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFav)? isFavoriteMovie,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsFavoriteMovie value) isFavoriteMovie,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsFavoriteMovie value)? isFavoriteMovie,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ToggleFavoriteState {
  const factory _Error() = _$_Error;
}
