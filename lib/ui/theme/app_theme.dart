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
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFFF7A00),
        onPrimary: Color(0xFFFFFFFF),
        secondary: Color(0xFFD9D9D9),
        onSecondary: Color(0xFF252323),
        error: Colors.red,
        onError: Color(0xFFFFFFFF),
        background: Color(0xFFF6F6F6),
        onBackground: Color(0xFF252323),
        surface: Color(0xFFFFFFFF),
        onSurface: Color(0xFF252323)),
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
