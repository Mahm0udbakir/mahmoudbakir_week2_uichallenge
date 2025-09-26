import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/home/presentation/screens/home_screen.dart';
import 'package:mahmoudbakir_week2_uichallenge/features/upgrade/presentation/screens/purchase_screen.dart';
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
      navBarHeight: 98,
      navBarStyle: NavBarStyle.style7,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    HomeScreen(),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
    Container(color: Colors.grey),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/home.png'),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/home', 
        ),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/group.png'),
      title: ("Categories"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/search.png'),
      title: ("Search"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/global.png'),
      title: ("Global"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/images/settings.png'),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: '/purchase', 
        ),
    ),
  ];
}
