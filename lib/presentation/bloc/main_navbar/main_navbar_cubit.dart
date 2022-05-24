import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon/presentation/journey/favorite/favorite_screen.dart';

import '../../journey/home/home_screen.dart';

part 'main_navbar_state.dart';

@lazySingleton
class MainNavbarCubit extends Cubit<MainNavbarState> {
  MainNavbarCubit()
      : super(const MainNavbarState(index: 0, page: NavigationBarEvent.HOME));

  void selectPage(int i) {
    switch (i) {
      case 0:
        emit(const MainNavbarState(index: 0, page: NavigationBarEvent.HOME));
        break;
      case 1:
        emit(
            const MainNavbarState(index: 1, page: NavigationBarEvent.FAVORITE));
        break;
    }
  }
}
