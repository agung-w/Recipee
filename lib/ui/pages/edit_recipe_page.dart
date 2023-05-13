import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/confirmation_dialog.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_container.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_container.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/poster_input.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_information_container.dart';
import 'package:ta_recipe_app/ui/widgets/tag_input_container.dart';

class EditRecipePage extends StatelessWidget {
  const EditRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return WillPopScope(
      onWillPop: () async {
        showExitPageDialog(context);
        return false;
      },
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                showExitPageDialog(context);
              },
            ),
            actions: [
              BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
                builder: (context, authState) {
                  return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
                    builder: (context, state) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 110,
                          child: ElevatedButton(
                            onPressed: state.map(
                                creating: (value) => () {
                                      if (formKey.currentState!.validate()) {
                                        context.read<CreateRecipeBloc>().add(
                                              CreateRecipeEvent.saveEdit(
                                                  context: context,
                                                  authState: authState),
                                            );
                                      }
                                    },
                                initial: (_) => () {}),
                            child: state.map(
                              creating: (value) =>
                                  const Text("save_recipe_text").tr(),
                              initial: (value) => LoadingIndicator(
                                size: 16,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: const Column(
                children: [
                  PosterInput(),
                  RecipeInformationContainer(),
                  IngredientContainer(),
                  CookingStepContainer(),
                  TagContainer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showExitPageDialog(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (builder) => ConfirmationDialog(
              actions: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "cancel_text".tr(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.onSecondary),
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        context.read<CreateRecipeBloc>().add(
                              CreateRecipeEvent.cancel(context: context),
                            );
                      },
                      child: Text(
                        "discard_changes_text".tr(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.error),
                      ).tr()),
                )
              ],
              title: 'cancel_edit_recipe_dialog_title'.tr(),
              content: 'cancel_edit_recipe_dialog_content'.tr(),
            ));
  }
}
