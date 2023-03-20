import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/cubit/metric_cubit.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';

class IngredientFormTile extends StatefulWidget {
  final RecipeIngredient ingredient;

  const IngredientFormTile({super.key, required this.ingredient});
  @override
  State<IngredientFormTile> createState() => _IngredientFormTileState();
}

class _IngredientFormTileState extends State<IngredientFormTile> {
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _quantityController.text = widget.ingredient.quantity != null
        ? widget.ingredient.quantity.toString()
        : "";
    _nameController.text = widget.ingredient.ingredient.name;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Slidable(
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (_) {
                context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.deleteIngredient(
                        ingredient: widget.ingredient));
              },
              backgroundColor: Theme.of(context).colorScheme.error,
              icon: Icons.delete_outline,
            ),
          ]),
          child: ListTile(
            leading: Container(
              width: 30,
              height: 30,
              color: Colors.grey,
              child: FadeInImage(
                  image:
                      NetworkImage(widget.ingredient.ingredient.picUrl ?? ""),
                  imageErrorBuilder: (context, error, stackTrace) =>
                      const Image(
                          image: AssetImage(
                              "assets/images/placeholder/no_image.jpg")),
                  placeholder: const AssetImage(
                      "assets/images/placeholder/no_image.jpg")),
            ),
            title: FocusScope(
              onFocusChange: (value) {
                if (!value) {
                  // TODO: Kasih konfirmasi kalo ga di submit
                }
              },
              child: TextField(
                controller: _nameController,
                onTapOutside: (_) => context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.editIngredientName(
                        ingredient: widget.ingredient,
                        name: _nameController.text)),
                onSubmitted: (value) => context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.editIngredientName(
                        ingredient: widget.ingredient, name: value)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  hintText: "ingredient_input_hint_create_recipe".tr(),
                  counterStyle: const TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                ),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    width: 48,
                    child: TextField(
                      controller: _quantityController,
                      maxLength: 3,
                      textAlign: TextAlign.center,
                      onChanged: (value) => context
                          .read<CreateRecipeBloc>()
                          .add(CreateRecipeEvent.editIngredientQuantity(
                              ingredient: widget.ingredient,
                              quantity: int.tryParse(value))),
                      onSubmitted: (value) => context
                          .read<CreateRecipeBloc>()
                          .add(CreateRecipeEvent.editIngredientQuantity(
                              ingredient: widget.ingredient,
                              quantity: int.tryParse(value))),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: "qty".tr(),
                        counterStyle: const TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                    )),
                BlocBuilder<MetricCubit, MetricState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          loaded: ((metrics) {
                            return DropdownButton<Metric?>(
                              style: Theme.of(context).textTheme.bodyMedium,
                              value: widget.ingredient.metric,
                              icon: const Icon(
                                Icons.expand_more_sharp,
                                color: Colors.black87,
                                size: 16,
                              ),
                              elevation: 2,
                              underline: Container(
                                height: 2,
                              ),
                              onChanged: (value) {
                                setState(() {
                                  context.read<CreateRecipeBloc>().add(
                                      CreateRecipeEvent.editIngredientMetric(
                                          ingredient: widget.ingredient,
                                          metric: value));
                                });
                              },
                              items: metrics
                                  .map<DropdownMenuItem<Metric>>((value) {
                                return DropdownMenuItem<Metric>(
                                  value: value,
                                  child: Text(value!.abbrev),
                                );
                              }).toList(),
                            );
                          }),
                        ) ??
                        const Text("failed to load data");
                  },
                ),
              ],
            ),
          )),
    );
  }
}
