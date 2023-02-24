import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ta_recipe_app/navigation/router.dart';
import 'package:ta_recipe_app/presentations/pages/create_page.dart';
import 'package:ta_recipe_app/presentations/pages/home_page.dart';
import 'package:ta_recipe_app/presentations/pages/profile_detail_page.dart';
import 'package:ta_recipe_app/presentations/pages/profile_page.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
