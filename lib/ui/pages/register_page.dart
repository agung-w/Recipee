import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/widgets/email_input.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/normal_text_input.dart';
import 'package:ta_recipe_app/ui/widgets/password_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfirmationController =
        TextEditingController();
    final formKey = GlobalKey<FormState>();
    _onSubmit() {
      if (formKey.currentState!.validate()) {
        context.read<UserAuthenticationBloc>().add(
            UserAuthenticationEvent.register(
                email: emailController.text,
                password: passwordController.text,
                context: context,
                name: nameController.text,
                username: usernameController.text.length > 1
                    ? usernameController.text
                    : null));
      }
    }

    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("register_page_app_bar_text").tr(),
          ),
          body: RawKeyboardListener(
            focusNode: FocusNode(),
            onKey: (value) =>
                value.logicalKey.keyLabel == "Enter" ? _onSubmit() : null,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  child: Center(
                    child: Form(
                      key: formKey,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          children: [
                            NormalTextInput(
                              maxLength: 60,
                              minLength: 3,
                              controller: nameController,
                              nullable: false,
                              label: 'name_label_text'.tr(),
                            ),
                            NormalTextInput(
                              maxLength: 60,
                              minLength: 3,
                              controller: usernameController,
                              label: 'username_label_text'.tr(),
                            ),
                            EmailInput(
                              controller: emailController,
                              label: 'email_label_text'.tr(),
                            ),
                            PasswordInput(
                              controller: passwordController,
                              label: 'password_label_text'.tr(),
                              validation: (value) {
                                if (value != null &&
                                    value.length >= 6 &&
                                    value.length <= 60) {
                                  if (passwordConfirmationController.text ==
                                      value) {
                                    return null;
                                  } else {
                                    return 'password_missmatch_error'.tr();
                                  }
                                } else {
                                  return 'password_input_error'.tr();
                                }
                              },
                            ),
                            PasswordInput(
                              controller: passwordConfirmationController,
                              label: 'password_confirmation_label_text'.tr(),
                              validation: (value) {
                                if (value != null &&
                                    value.length >= 6 &&
                                    value.length <= 60) {
                                  if (passwordController.text == value) {
                                    return null;
                                  } else {
                                    return 'password_missmatch_error'.tr();
                                  }
                                } else {
                                  return 'password_input_error'.tr();
                                }
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _onSubmit();
                                  },
                                  child: state.whenOrNull(
                                    signedOut: () =>
                                        const Text("register_button_text").tr(),
                                    loading: () => LoadingIndicator(
                                      size: 16,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
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
                                  const Text("already_has_account_text").tr(),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    const LoginPage()));
                                      },
                                      child: const Text(
                                        "login_button_text",
                                        textAlign: TextAlign.center,
                                      ).tr())
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
