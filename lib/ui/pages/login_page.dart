import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/ui/pages/register_page.dart';
import 'package:ta_recipe_app/ui/widgets/email_input.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/password_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("login_page_app_bar_text").tr(),
          ),
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Center(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: EmailInput(
                              controller: emailController,
                              label: 'email_label_text'.tr(),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: PasswordInput(
                              controller: passwordController,
                              label: 'password_label_text'.tr(),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<UserAuthenticationBloc>().add(
                                    UserAuthenticationEvent.loginByEmail(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        context: context));
                              },
                              child: state.whenOrNull(
                                signedOut: () =>
                                    const Text("login_button_text").tr(),
                                loading: () => LoadingIndicator(
                                  size: 16,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "not_have_account_yet_text",
                                textAlign: TextAlign.center,
                              ).tr(),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const RegisterPage()));
                                  },
                                  child: const Text(
                                    "register_button_text",
                                    textAlign: TextAlign.center,
                                  ).tr())
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
