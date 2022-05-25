// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) {
  return _PokemonListResponse.fromJson(json);
}

/// @nodoc
class _$PokemonListResponseTearOff {
  const _$PokemonListResponseTearOff();

  _PokemonListResponse call({required String name, required String url}) {
    return _PokemonListResponse(
      name: name,
      url: url,
    );
  }

  PokemonListResponse fromJson(Map<String, Object?> json) {
    return PokemonListResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonListResponse = _$PokemonListResponseTearOff();

/// @nodoc
mixin _$PokemonListResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResponseCopyWith<PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseCopyWith<$Res> {
  factory $PokemonListResponseCopyWith(
          PokemonListResponse value, $Res Function(PokemonListResponse) then) =
      _$PokemonListResponseCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._value, this._then);

  final PokemonListResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonListResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonListResponseCopyWith<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  factory _$PokemonListResponseCopyWith(_PokemonListResponse value,
          $Res Function(_PokemonListResponse) then) =
      __$PokemonListResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$PokemonListResponseCopyWithImpl<$Res>
    extends _$PokemonListResponseCopyWithImpl<$Res>
    implements _$PokemonListResponseCopyWith<$Res> {
  __$PokemonListResponseCopyWithImpl(
      _PokemonListResponse _value, $Res Function(_PokemonListResponse) _then)
      : super(_value, (v) => _then(v as _PokemonListResponse));

  @override
  _PokemonListResponse get _value => super._value as _PokemonListResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_PokemonListResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonListResponse implements _PokemonListResponse {
  _$_PokemonListResponse({required this.name, required this.url});

  factory _$_PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListResponseFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonListResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith =>
      __$PokemonListResponseCopyWithImpl<_PokemonListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListResponseToJson(this);
  }
}

abstract class _PokemonListResponse implements PokemonListResponse {
  factory _PokemonListResponse({required String name, required String url}) =
      _$_PokemonListResponse;

  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonListResponse.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
