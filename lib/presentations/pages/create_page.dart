import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ta_recipe_app/presentations/pages/create_recipe_page.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: const Text("header_in_create_page").tr()),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (_) => const CreateRecipePage()));
            },
            child: const Text("create_recipe_button").tr())
      ]),
    );
  }
}
