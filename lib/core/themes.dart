import 'package:flutter/material.dart';

class MyTheme {
  static Color primary_color = const Color(0xff52D1C6);
  static Color black = const Color(0xFF242424);
static Color greyAccent=Colors.grey.shade200;
  static ThemeData LightTheme = ThemeData(
      primaryColor: primary_color,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        titleTextStyle:
            TextStyle(fontSize: 38, color: black, fontWeight: FontWeight.w500),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primary_color,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(color: Colors.white),
        headlineSmall: TextStyle(color: Colors.black, fontSize: 18),
        headlineLarge: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        bodyMedium: TextStyle(color: Colors.black),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ));
  static ThemeData DarkTheme = ThemeData(
      primaryColor: primary_color,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: greyAccent,
        selectedIconTheme: const IconThemeData(color: Colors.amber),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(color: Colors.white, fontSize: 24),
        headlineSmall: TextStyle(color: Colors.white),

        //   color: Colors.black,
        //   fontWeight: FontWeight.bold,
        // ),
        bodyMedium: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ));
}
