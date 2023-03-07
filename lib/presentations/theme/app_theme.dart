import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // appBarTheme: const AppBarTheme(
    //   backgroundColor: Colors.white,
    //   foregroundColor: Colors.black,
    //   elevation: 0,
    //   titleSpacing: 0,
    //   titleTextStyle: TextStyle(
    //       fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
    // ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFFFFF),
      foregroundColor: Color(0xFF000000),
      elevation: 0,
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 14),
        displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFFff4500),
        unselectedItemColor: Colors.black));

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFFFFFFF)),
);
