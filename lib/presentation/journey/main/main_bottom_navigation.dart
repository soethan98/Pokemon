import 'package:flutter/material.dart';

import '../../bloc/main_navbar/main_navbar_cubit.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final Function(int) onSelectedIndexChange;
  final int selectedIndex;
  const MainBottomNavigationBar(
      {Key? key,
      required this.selectedIndex,
      required this.onSelectedIndexChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          onSelectedIndexChange(index);
        },
        items: navBarItems
            .map((e) => BottomNavigationBarItem(
                icon: Icon(e.iconData), label: e.title))
            .toList());
  }
}