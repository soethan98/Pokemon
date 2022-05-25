// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemons_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonsResponse _$PokemonsResponseFromJson(Map<String, dynamic> json) {
  return _PokemonsResponse.fromJson(json);
}

/// @nodoc
class _$PokemonsResponseTearOff {
  const _$PokemonsResponseTearOff();

  _PokemonsResponse call({required List<PokemonListResponse> results}) {
    return _PokemonsResponse(
      results: results,
    );
  }

  PokemonsResponse fromJson(Map<String, Object?> json) {
    return PokemonsResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonsResponse = _$PokemonsResponseTearOff();

/// @nodoc
mixin _$PokemonsResponse {
  List<PokemonListResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsResponseCopyWith<PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsResponseCopyWith<$Res> {
  factory $PokemonsResponseCopyWith(
          PokemonsResponse value, $Res Function(PokemonsResponse) then) =
      _$PokemonsResponseCopyWithImpl<$Res>;
  $Res call({List<PokemonListResponse> results});
}

/// @nodoc
class _$PokemonsResponseCopyWithImpl<$Res>
    implements $PokemonsResponseCopyWith<$Res> {
  _$PokemonsResponseCopyWithImpl(this._value, this._then);

  final PokemonsResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonsResponse) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListResponse>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonsResponseCopyWith<$Res>
    implements $PokemonsResponseCopyWith<$Res> {
  factory _$PokemonsResponseCopyWith(
          _PokemonsResponse value, $Res Function(_PokemonsResponse) then) =
      __$PokemonsResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<PokemonListResponse> results});
}

/// @nodoc
class __$PokemonsResponseCopyWithImpl<$Res>
    extends _$PokemonsResponseCopyWithImpl<$Res>
    implements _$PokemonsResponseCopyWith<$Res> {
  __$PokemonsResponseCopyWithImpl(
      _PokemonsResponse _value, $Res Function(_PokemonsResponse) _then)
      : super(_value, (v) => _then(v as _PokemonsResponse));

  @override
  _PokemonsResponse get _value => super._value as _PokemonsResponse;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_PokemonsResponse(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonsResponse implements _PokemonsResponse {
  _$_PokemonsResponse({required this.results});

  factory _$_PokemonsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonsResponseFromJson(json);

  @override
  final List<PokemonListResponse> results;

  @override
  String toString() {
    return 'PokemonsResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonsResponse &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$PokemonsResponseCopyWith<_PokemonsResponse> get copyWith =>
      __$PokemonsResponseCopyWithImpl<_PokemonsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonsResponseToJson(this);
  }
}

abstract class _PokemonsResponse implements PokemonsResponse {
  factory _PokemonsResponse({required List<PokemonListResponse> results}) =
      _$_PokemonsResponse;

  factory _PokemonsResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonsResponse.fromJson;

  @override
  List<PokemonListResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$PokemonsResponseCopyWith<_PokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
