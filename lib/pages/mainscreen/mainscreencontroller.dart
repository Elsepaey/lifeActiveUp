import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:navbar_router/navbar_router.dart';
import 'package:nutrifit/pages/foodcalender/foodlog.dart';
import 'package:nutrifit/pages/meals/mealsview.dart';

import '../profile/profile.dart';
import '../hompage/homepage.dart';

class MainScreenController extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    Foodlog(),
    Meals(),
    Profile(),

  ];


  List<NavbarItem> navitems = [
    NavbarItem(Icons.home_outlined, 'Home',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.home,
          size: 26,
        )),
    NavbarItem(Icons.calendar_today_outlined, 'Meals',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.calendar_today,
          size: 26,
        )),
    NavbarItem(Icons.emoji_food_beverage_outlined, 'Meals',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.emoji_food_beverage_rounded,
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
      '/': Foodlog(),
    },
    3: {
      '/': Profile(),
    },
    2: {
      '/': Meals(),
    },
  };
}
