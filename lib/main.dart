import 'package:flutter/material.dart';
import 'package:ta_recipe_app/presentations/navigations/main_page.dart';
import 'package:ta_recipe_app/presentations/theme/app_theme.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: MainPage(),
    );
  }
}
