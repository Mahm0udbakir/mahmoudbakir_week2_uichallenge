import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/home/presentation/screens/home_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 0),
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: Color(0xffF9F8FD),
      navBarHeight: 98,
      navBarStyle: NavBarStyle.style17,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    HomeScreen(),
    Container(color: Colors.white),
    Container(color: Colors.white),
    Container(color: Colors.white),
    Container(color: Colors.white),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/home.png'),
      title: ("Home"),
      activeColorPrimary: Color(0xff5436F8),
      inactiveColorPrimary: Color(0xffAEADB5),
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/home',
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/group.png'),
      title: ("Categories"),
      activeColorPrimary: Color(0xff5436F8),

      inactiveColorPrimary: Color(0xffAEADB5),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/search.png'),
      title: ("Search"),

      activeColorPrimary: Color(0xff5436F8),
      inactiveColorPrimary: Color(0xffAEADB5),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/global.png'),
      title: ("Global"),

      activeColorPrimary: Color(0xff5436F8),
      inactiveColorPrimary: Color(0xffAEADB5),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/settings.png'),
      title: ("Settings"),

      activeColorPrimary: Color(0xff5436F8),
      inactiveColorPrimary: Color(0xffAEADB5),
    ),
  ];
}
