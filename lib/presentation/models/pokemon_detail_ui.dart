import 'package:flutter/material.dart';

class UiPokemonDetail {
  final int id;
  final String name;
  final int weight;
  final int height;
  final String imageUrl;
  final String types;
  final Color bgColor;
  final List<UiAbility> abilities;

  UiPokemonDetail(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.imageUrl,
      required this.types,
      required this.abilities,
      required this.bgColor});
}

class UiAbility {
  final String name;
  final bool isHidden;

  UiAbility({required this.name, required this.isHidden});
}
