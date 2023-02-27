import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/presentations/widgets/email_input.dart';
import 'package:ta_recipe_app/presentations/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/presentations/widgets/password_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: EmailInput(
                      controller: emailController,
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: PasswordInput(controller: passwordController)),
                ElevatedButton(
                  onPressed: () {
                    context.read<UserAuthenticationBloc>().add(
                        UserAuthenticationEvent.loginByEmail(
                            email: emailController.text,
                            password: passwordController.text,
                            context: context));
                  },
                  child: state.whenOrNull(
                    signedOut: () => const Text("Login"),
                    loading: () => const LoadingIndicator(size: 16),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
