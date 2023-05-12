import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';

class TagContainer extends StatelessWidget {
  const TagContainer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController tagInputController = TextEditingController();
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "tag_title",
                style: Theme.of(context).textTheme.headlineMedium,
              ).tr(),
              if (state.recipe?.recipeTagsAttributes != null &&
                  state.recipe!.recipeTagsAttributes!.isNotEmpty) ...{
                Padding(
                  //outer spacing
                  padding: const EdgeInsets.only(right: 8),
                  child: Wrap(
                    spacing: 8, // space between items
                    children: state.recipe!.recipeTagsAttributes!
                        .map(
                          (e) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            margin: const EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.65),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Text(
                                        e.name.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.close,
                                      size: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                    onTap: () {
                                      context.read<CreateRecipeBloc>().add(
                                            CreateRecipeEvent.deleteTag(tag: e),
                                          );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              } else ...{
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 6),
                  child: const Text("add_tag_description").tr(),
                )
              },
              TextFormField(
                controller: tagInputController,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLength: 250,
                autofocus: false,
                buildCounter: null,
                onFieldSubmitted: (value) {
                  context.read<CreateRecipeBloc>().add(CreateRecipeEvent.addTag(
                      tag: tagInputController.text,
                      controller: tagInputController,
                      context: context));
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 5, right: 5),
                  counterStyle: const TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  hintText: "add_tag_input_hint".tr(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
