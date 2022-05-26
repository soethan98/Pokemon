import 'package:flutter/material.dart';

class UiPokemonDetail {
  final int id;
  final String name;
  final int weight;
  final int height;
  final String imageUrl;
  final String types;
  final Color bgColor;
  final String abilities;

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
