// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonDetailResponse _$PokemonDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonDetailResponse.fromJson(json);
}

/// @nodoc
class _$PokemonDetailResponseTearOff {
  const _$PokemonDetailResponseTearOff();

  _PokemonDetailResponse call(
      {List<AbilityElement> abilities = const [],
      int height = 0,
      dynamic weight = 0,
      required int id,
      required String name,
      List<Type> types = const [],
      List<Stat> stats = const []}) {
    return _PokemonDetailResponse(
      abilities: abilities,
      height: height,
      weight: weight,
      id: id,
      name: name,
      types: types,
      stats: stats,
    );
  }

  PokemonDetailResponse fromJson(Map<String, Object?> json) {
    return PokemonDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $PokemonDetailResponse = _$PokemonDetailResponseTearOff();

/// @nodoc
mixin _$PokemonDetailResponse {
  List<AbilityElement> get abilities => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  dynamic get weight => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Type> get types => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailResponseCopyWith<PokemonDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailResponseCopyWith<$Res> {
  factory $PokemonDetailResponseCopyWith(PokemonDetailResponse value,
          $Res Function(PokemonDetailResponse) then) =
      _$PokemonDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {List<AbilityElement> abilities,
      int height,
      dynamic weight,
      int id,
      String name,
      List<Type> types,
      List<Stat> stats});
}

/// @nodoc
class _$PokemonDetailResponseCopyWithImpl<$Res>
    implements $PokemonDetailResponseCopyWith<$Res> {
  _$PokemonDetailResponseCopyWithImpl(this._value, this._then);

  final PokemonDetailResponse _value;
  // ignore: unused_field
  final $Res Function(PokemonDetailResponse) _then;

  @override
  $Res call({
    Object? abilities = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? types = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityElement>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonDetailResponseCopyWith<$Res>
    implements $PokemonDetailResponseCopyWith<$Res> {
  factory _$PokemonDetailResponseCopyWith(_PokemonDetailResponse value,
          $Res Function(_PokemonDetailResponse) then) =
      __$PokemonDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AbilityElement> abilities,
      int height,
      dynamic weight,
      int id,
      String name,
      List<Type> types,
      List<Stat> stats});
}

/// @nodoc
class __$PokemonDetailResponseCopyWithImpl<$Res>
    extends _$PokemonDetailResponseCopyWithImpl<$Res>
    implements _$PokemonDetailResponseCopyWith<$Res> {
  __$PokemonDetailResponseCopyWithImpl(_PokemonDetailResponse _value,
      $Res Function(_PokemonDetailResponse) _then)
      : super(_value, (v) => _then(v as _PokemonDetailResponse));

  @override
  _PokemonDetailResponse get _value => super._value as _PokemonDetailResponse;

  @override
  $Res call({
    Object? abilities = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? types = freezed,
    Object? stats = freezed,
  }) {
    return _then(_PokemonDetailResponse(
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityElement>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: weight == freezed ? _value.weight : weight,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Stat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonDetailResponse implements _PokemonDetailResponse {
  const _$_PokemonDetailResponse(
      {this.abilities = const [],
      this.height = 0,
      this.weight = 0,
      required this.id,
      required this.name,
      this.types = const [],
      this.stats = const []});

  factory _$_PokemonDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonDetailResponseFromJson(json);

  @JsonKey()
  @override
  final List<AbilityElement> abilities;
  @JsonKey()
  @override
  final int height;
  @JsonKey()
  @override
  final dynamic weight;
  @override
  final int id;
  @override
  final String name;
  @JsonKey()
  @override
  final List<Type> types;
  @JsonKey()
  @override
  final List<Stat> stats;

  @override
  String toString() {
    return 'PokemonDetailResponse(abilities: $abilities, height: $height, weight: $weight, id: $id, name: $name, types: $types, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonDetailResponse &&
            const DeepCollectionEquality().equals(other.abilities, abilities) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(abilities),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$PokemonDetailResponseCopyWith<_PokemonDetailResponse> get copyWith =>
      __$PokemonDetailResponseCopyWithImpl<_PokemonDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonDetailResponseToJson(this);
  }
}

abstract class _PokemonDetailResponse implements PokemonDetailResponse {
  const factory _PokemonDetailResponse(
      {List<AbilityElement> abilities,
      int height,
      dynamic weight,
      required int id,
      required String name,
      List<Type> types,
      List<Stat> stats}) = _$_PokemonDetailResponse;

  factory _PokemonDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetailResponse.fromJson;

  @override
  List<AbilityElement> get abilities;
  @override
  int get height;
  @override
  dynamic get weight;
  @override
  int get id;
  @override
  String get name;
  @override
  List<Type> get types;
  @override
  List<Stat> get stats;
  @override
  @JsonKey(ignore: true)
  _$PokemonDetailResponseCopyWith<_PokemonDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityElement _$AbilityElementFromJson(Map<String, dynamic> json) {
  return _AbilityElement.fromJson(json);
}

/// @nodoc
class _$AbilityElementTearOff {
  const _$AbilityElementTearOff();

  _AbilityElement call({StatClass? ability, bool? isHidden}) {
    return _AbilityElement(
      ability: ability,
      isHidden: isHidden,
    );
  }

  AbilityElement fromJson(Map<String, Object?> json) {
    return AbilityElement.fromJson(json);
  }
}

/// @nodoc
const $AbilityElement = _$AbilityElementTearOff();

/// @nodoc
mixin _$AbilityElement {
  StatClass? get ability => throw _privateConstructorUsedError;
  bool? get isHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityElementCopyWith<AbilityElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityElementCopyWith<$Res> {
  factory $AbilityElementCopyWith(
          AbilityElement value, $Res Function(AbilityElement) then) =
      _$AbilityElementCopyWithImpl<$Res>;
  $Res call({StatClass? ability, bool? isHidden});

  $StatClassCopyWith<$Res>? get ability;
}

/// @nodoc
class _$AbilityElementCopyWithImpl<$Res>
    implements $AbilityElementCopyWith<$Res> {
  _$AbilityElementCopyWithImpl(this._value, this._then);

  final AbilityElement _value;
  // ignore: unused_field
  final $Res Function(AbilityElement) _then;

  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = freezed,
  }) {
    return _then(_value.copyWith(
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as StatClass?,
      isHidden: isHidden == freezed
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $StatClassCopyWith<$Res>? get ability {
    if (_value.ability == null) {
      return null;
    }

    return $StatClassCopyWith<$Res>(_value.ability!, (value) {
      return _then(_value.copyWith(ability: value));
    });
  }
}

/// @nodoc
abstract class _$AbilityElementCopyWith<$Res>
    implements $AbilityElementCopyWith<$Res> {
  factory _$AbilityElementCopyWith(
          _AbilityElement value, $Res Function(_AbilityElement) then) =
      __$AbilityElementCopyWithImpl<$Res>;
  @override
  $Res call({StatClass? ability, bool? isHidden});

  @override
  $StatClassCopyWith<$Res>? get ability;
}

/// @nodoc
class __$AbilityElementCopyWithImpl<$Res>
    extends _$AbilityElementCopyWithImpl<$Res>
    implements _$AbilityElementCopyWith<$Res> {
  __$AbilityElementCopyWithImpl(
      _AbilityElement _value, $Res Function(_AbilityElement) _then)
      : super(_value, (v) => _then(v as _AbilityElement));

  @override
  _AbilityElement get _value => super._value as _AbilityElement;

  @override
  $Res call({
    Object? ability = freezed,
    Object? isHidden = freezed,
  }) {
    return _then(_AbilityElement(
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as StatClass?,
      isHidden: isHidden == freezed
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbilityElement implements _AbilityElement {
  const _$_AbilityElement({this.ability, this.isHidden});

  factory _$_AbilityElement.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityElementFromJson(json);

  @override
  final StatClass? ability;
  @override
  final bool? isHidden;

  @override
  String toString() {
    return 'AbilityElement(ability: $ability, isHidden: $isHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbilityElement &&
            const DeepCollectionEquality().equals(other.ability, ability) &&
            const DeepCollectionEquality().equals(other.isHidden, isHidden));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ability),
      const DeepCollectionEquality().hash(isHidden));

  @JsonKey(ignore: true)
  @override
  _$AbilityElementCopyWith<_AbilityElement> get copyWith =>
      __$AbilityElementCopyWithImpl<_AbilityElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityElementToJson(this);
  }
}

abstract class _AbilityElement implements AbilityElement {
  const factory _AbilityElement({StatClass? ability, bool? isHidden}) =
      _$_AbilityElement;

  factory _AbilityElement.fromJson(Map<String, dynamic> json) =
      _$_AbilityElement.fromJson;

  @override
  StatClass? get ability;
  @override
  bool? get isHidden;
  @override
  @JsonKey(ignore: true)
  _$AbilityElementCopyWith<_AbilityElement> get copyWith =>
      throw _privateConstructorUsedError;
}

StatClass _$StatClassFromJson(Map<String, dynamic> json) {
  return _StatClass.fromJson(json);
}

/// @nodoc
class _$StatClassTearOff {
  const _$StatClassTearOff();

  _StatClass call({String? name}) {
    return _StatClass(
      name: name,
    );
  }

  StatClass fromJson(Map<String, Object?> json) {
    return StatClass.fromJson(json);
  }
}

/// @nodoc
const $StatClass = _$StatClassTearOff();

/// @nodoc
mixin _$StatClass {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatClassCopyWith<StatClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatClassCopyWith<$Res> {
  factory $StatClassCopyWith(StatClass value, $Res Function(StatClass) then) =
      _$StatClassCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$StatClassCopyWithImpl<$Res> implements $StatClassCopyWith<$Res> {
  _$StatClassCopyWithImpl(this._value, this._then);

  final StatClass _value;
  // ignore: unused_field
  final $Res Function(StatClass) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StatClassCopyWith<$Res> implements $StatClassCopyWith<$Res> {
  factory _$StatClassCopyWith(
          _StatClass value, $Res Function(_StatClass) then) =
      __$StatClassCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$StatClassCopyWithImpl<$Res> extends _$StatClassCopyWithImpl<$Res>
    implements _$StatClassCopyWith<$Res> {
  __$StatClassCopyWithImpl(_StatClass _value, $Res Function(_StatClass) _then)
      : super(_value, (v) => _then(v as _StatClass));

  @override
  _StatClass get _value => super._value as _StatClass;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_StatClass(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatClass implements _StatClass {
  const _$_StatClass({this.name});

  factory _$_StatClass.fromJson(Map<String, dynamic> json) =>
      _$$_StatClassFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'StatClass(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatClass &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$StatClassCopyWith<_StatClass> get copyWith =>
      __$StatClassCopyWithImpl<_StatClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatClassToJson(this);
  }
}

abstract class _StatClass implements StatClass {
  const factory _StatClass({String? name}) = _$_StatClass;

  factory _StatClass.fromJson(Map<String, dynamic> json) =
      _$_StatClass.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$StatClassCopyWith<_StatClass> get copyWith =>
      throw _privateConstructorUsedError;
}

Stat _$StatFromJson(Map<String, dynamic> json) {
  return _Stat.fromJson(json);
}

/// @nodoc
class _$StatTearOff {
  const _$StatTearOff();

  _Stat call({int? baseStat, int? effort, StatClass? stat}) {
    return _Stat(
      baseStat: baseStat,
      effort: effort,
      stat: stat,
    );
  }

  Stat fromJson(Map<String, Object?> json) {
    return Stat.fromJson(json);
  }
}

/// @nodoc
const $Stat = _$StatTearOff();

/// @nodoc
mixin _$Stat {
  int? get baseStat => throw _privateConstructorUsedError;
  int? get effort => throw _privateConstructorUsedError;
  StatClass? get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res>;
  $Res call({int? baseStat, int? effort, StatClass? stat});

  $StatClassCopyWith<$Res>? get stat;
}

/// @nodoc
class _$StatCopyWithImpl<$Res> implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  final Stat _value;
  // ignore: unused_field
  final $Res Function(Stat) _then;

  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_value.copyWith(
      baseStat: baseStat == freezed
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatClass?,
    ));
  }

  @override
  $StatClassCopyWith<$Res>? get stat {
    if (_value.stat == null) {
      return null;
    }

    return $StatClassCopyWith<$Res>(_value.stat!, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }
}

/// @nodoc
abstract class _$StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$StatCopyWith(_Stat value, $Res Function(_Stat) then) =
      __$StatCopyWithImpl<$Res>;
  @override
  $Res call({int? baseStat, int? effort, StatClass? stat});

  @override
  $StatClassCopyWith<$Res>? get stat;
}

/// @nodoc
class __$StatCopyWithImpl<$Res> extends _$StatCopyWithImpl<$Res>
    implements _$StatCopyWith<$Res> {
  __$StatCopyWithImpl(_Stat _value, $Res Function(_Stat) _then)
      : super(_value, (v) => _then(v as _Stat));

  @override
  _Stat get _value => super._value as _Stat;

  @override
  $Res call({
    Object? baseStat = freezed,
    Object? effort = freezed,
    Object? stat = freezed,
  }) {
    return _then(_Stat(
      baseStat: baseStat == freezed
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int?,
      effort: effort == freezed
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int?,
      stat: stat == freezed
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatClass?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stat implements _Stat {
  const _$_Stat({this.baseStat, this.effort, this.stat});

  factory _$_Stat.fromJson(Map<String, dynamic> json) => _$$_StatFromJson(json);

  @override
  final int? baseStat;
  @override
  final int? effort;
  @override
  final StatClass? stat;

  @override
  String toString() {
    return 'Stat(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stat &&
            const DeepCollectionEquality().equals(other.baseStat, baseStat) &&
            const DeepCollectionEquality().equals(other.effort, effort) &&
            const DeepCollectionEquality().equals(other.stat, stat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(baseStat),
      const DeepCollectionEquality().hash(effort),
      const DeepCollectionEquality().hash(stat));

  @JsonKey(ignore: true)
  @override
  _$StatCopyWith<_Stat> get copyWith =>
      __$StatCopyWithImpl<_Stat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatToJson(this);
  }
}

abstract class _Stat implements Stat {
  const factory _Stat({int? baseStat, int? effort, StatClass? stat}) = _$_Stat;

  factory _Stat.fromJson(Map<String, dynamic> json) = _$_Stat.fromJson;

  @override
  int? get baseStat;
  @override
  int? get effort;
  @override
  StatClass? get stat;
  @override
  @JsonKey(ignore: true)
  _$StatCopyWith<_Stat> get copyWith => throw _privateConstructorUsedError;
}

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
class _$TypeTearOff {
  const _$TypeTearOff();

  _Type call({StatClass? type}) {
    return _Type(
      type: type,
    );
  }

  Type fromJson(Map<String, Object?> json) {
    return Type.fromJson(json);
  }
}

/// @nodoc
const $Type = _$TypeTearOff();

/// @nodoc
mixin _$Type {
  StatClass? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res>;
  $Res call({StatClass? type});

  $StatClassCopyWith<$Res>? get type;
}

/// @nodoc
class _$TypeCopyWithImpl<$Res> implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  final Type _value;
  // ignore: unused_field
  final $Res Function(Type) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StatClass?,
    ));
  }

  @override
  $StatClassCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $StatClassCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$TypeCopyWith(_Type value, $Res Function(_Type) then) =
      __$TypeCopyWithImpl<$Res>;
  @override
  $Res call({StatClass? type});

  @override
  $StatClassCopyWith<$Res>? get type;
}

/// @nodoc
class __$TypeCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res>
    implements _$TypeCopyWith<$Res> {
  __$TypeCopyWithImpl(_Type _value, $Res Function(_Type) _then)
      : super(_value, (v) => _then(v as _Type));

  @override
  _Type get _value => super._value as _Type;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_Type(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StatClass?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type implements _Type {
  const _$_Type({this.type});

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final StatClass? type;

  @override
  String toString() {
    return 'Type(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Type &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$TypeCopyWith<_Type> get copyWith =>
      __$TypeCopyWithImpl<_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(this);
  }
}

abstract class _Type implements Type {
  const factory _Type({StatClass? type}) = _$_Type;

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  StatClass? get type;
  @override
  @JsonKey(ignore: true)
  _$TypeCopyWith<_Type> get copyWith => throw _privateConstructorUsedError;
}
