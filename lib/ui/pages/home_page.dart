import 'package:flutter/material.dart';
import 'package:ta_recipe_app/ui/pages/profile_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProfileDetailPage()));
            },
            child: const Text('data')));
  }
}
