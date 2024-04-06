import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:navbar_router/navbar_router.dart';

import '../profile/profile.dart';
import 'homepage.dart';

class MainScreenController extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    Profile(),
  ];
  // List<BottomNavigationBarItem> items = [
  //   BottomNavigationBarItem(icon: Icon(Icons.add), label: "kk"),
  //   BottomNavigationBarItem(icon: Icon(Icons.add), label: "cc")
  // ];

  List<NavbarItem> navitems = [
    NavbarItem(Icons.home_outlined, 'Home',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.home,
          size: 26,
        )),
    NavbarItem(Icons.person_2_outlined, 'Profile',
        backgroundColor: Colors.orange,
        selectedIcon: Icon(
          Icons.person,
          size: 26,
        )),
  ];

  final Map<int, Map<String, Widget>> routes = {
    0: {
      '/': HomePage(),
    },
    1: {
      '/': Profile(),
    },
  };
}
