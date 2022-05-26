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
  final List<UiStatDetail> stats;

  UiPokemonDetail(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.imageUrl,
      required this.types,
      required this.abilities,
      required this.bgColor,
      required this.stats,
     });

  // copyWith({bool? isFav}) {
  //   return UiPokemonDetail(
  //       id: id,
  //       name: name,
  //       height: height,
  //       weight: weight,
  //       imageUrl: imageUrl,
  //       types: types,
  //       abilities: abilities,
  //       bgColor: bgColor,
  //       stats: stats,
  //       isFav: isFav ?? this.isFav);
  // }
}

class UiStatDetail {
  final int baseState;
  final String name;

  UiStatDetail({required this.baseState, required this.name});
}
