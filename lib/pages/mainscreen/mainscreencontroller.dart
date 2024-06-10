import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:navbar_router/navbar_router.dart';
import 'package:nutrifit/pages/foodcalender/foodlog.dart';
import 'package:nutrifit/pages/workout/workoutview.dart';

import '../hompage/homepage.dart';
import '../meals/view.dart';

class MainScreenController extends GetxController {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    Foodlog(),
    ViewMeals(),
Workout()
  ];

  List<NavbarItem> navitems =
  [
    const NavbarItem(Icons.home_outlined, 'Home',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.home,
          size: 26,
        )),
    const NavbarItem(Icons.calendar_today_outlined, 'Meals',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.calendar_today,
          size: 26,
        )),
    const NavbarItem(Icons.emoji_food_beverage_outlined, 'Meals',
        backgroundColor: mediumPurple,
        selectedIcon: Icon(
          Icons.emoji_food_beverage_rounded,
          size: 26,
        )),
    const NavbarItem(FontAwesomeIcons.dumbbell, 'Workout',
        backgroundColor: Colors.orange,
        selectedIcon:ImageIcon(AssetImage("assets/icons/icons8-workout-50.png"),          size: 30,
        ),),

  ];

  final Map<int, Map<String, Widget>> routes = {
    0: {
      '/': HomePage(),
    },
    1: {
      '/': Foodlog(),
    },

    2: {
      '/': ViewMeals(),
    },
    3: {
      '/': Workout(),
    },
  };
}
