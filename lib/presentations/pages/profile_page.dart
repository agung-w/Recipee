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
          signedIn: (_) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                    width: 100,
                    height: 100,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Agung Wijaya",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Text(
                            "Agung Wijaya",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Row(
                            children: [
                              _CountText(count: 100, text: "Following"),
                              _CountText(count: 100, text: "Follower")
                            ],
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<UserAuthenticationBloc>()
                      .add(const UserAuthenticationEvent.logout());
                },
                child: const Text("logout"),
              )
            ]),
          ),
          signedOut: () => Column(
            children: [
              InkWell(
                child: Container(
                  color: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  margin: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      Container(
                        height: 45,
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Masuk',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'Buat, simpan resep kapanpun dimanapun',
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
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

class _CountText extends StatelessWidget {
  final int count;
  final String text;
  const _CountText({
    required this.count,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(count.toString()),
          const Text(" "),
          Text(text.toString()),
        ],
      ),
    );
  }
}
