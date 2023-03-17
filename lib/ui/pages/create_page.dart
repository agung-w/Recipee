import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/ui/pages/create_recipe_page.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: const Text("header_in_create_page").tr()),
        BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
          builder: (context, state) {
            return state.maybeMap(
                signedIn: (value) => ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (_) => const CreateRecipePage()));
                    },
                    child: const Text("create_recipe_button").tr()),
                orElse: () => ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(builder: (_) => const LoginPage()));
                    },
                    child: const Text("create_recipe_button").tr()));
          },
        ),
      ]),
    );
  }
}
