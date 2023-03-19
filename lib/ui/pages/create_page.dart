import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: const Text("header_in_create_page").tr()),
        BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
          builder: (context, state) {
            return ElevatedButton(
                onPressed: () {
                  context.read<CreateRecipeBloc>().add(
                      CreateRecipeEvent.create(state: state, context: context));
                },
                child: const Text("create_recipe_button").tr());
          },
        ),
      ]),
    );
  }
}
