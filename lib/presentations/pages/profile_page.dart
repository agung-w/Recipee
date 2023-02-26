import 'package:flutter/material.dart';
import 'package:ta_recipe_app/presentations/pages/login_page.dart';
import 'package:ta_recipe_app/presentations/pages/profile_detail_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ProfileDetailPage()));
            },
            child: const Text("detail"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const LoginPage()));
            },
            child: const Text("login"),
          ),
        ],
      ),
    );
  }
}
