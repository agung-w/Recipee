import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/presentations/pages/login_page.dart';
import 'package:ta_recipe_app/presentations/widgets/skeleton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return Scaffold(
            body: state.when(
          signedIn: (_) => Column(
            children: [
              Container(
                color: Colors.grey,
                width: 100,
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<UserAuthenticationBloc>()
                      .add(const UserAuthenticationEvent.logout());
                },
                child: const Text("logout"),
              )
            ],
          ),
          signedOut: () => Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: const Text("login"),
              ),
            ],
          ),
          loading: () => Column(
            children: [
              Skeleton(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(builder: (_) => const LoginPage()));
                  },
                  child: const Text("login"),
                ),
              )
            ],
          ),
        ));
      },
    );
  }
}
