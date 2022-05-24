part of 'main_navbar_cubit.dart';




class MainNavbar {
  final int index;
  final String title;
  final IconData iconData;

  const MainNavbar(
      {required this.index, required this.title, required this.iconData})
      : assert(index >= 0, 'index cannot be negative');
}

final navBarItems =  [
  const MainNavbar(
      index: 0, title: 'Home', iconData: Icons.home),
  const MainNavbar(
      index: 1,
      title: 'Favorite',
      iconData: Icons.favorite),
 
];

final mainScreens = [const HomeScreen(), const FavoriteScreen()];

enum NavigationBarEvent { HOME, FAVORITE }

class MainNavbarState extends Equatable {
  const MainNavbarState({required this.page,required  this.index});
  final int index;
  final NavigationBarEvent page;

  @override
  List<Object?> get props => [index, page];
}
