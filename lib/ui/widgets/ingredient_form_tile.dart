import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/cubit/metric_cubit.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';

class IngredientFormTile extends StatelessWidget {
  final RecipeIngredient ingredient;

  const IngredientFormTile({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    TextEditingController name =
        TextEditingController(text: ingredient.ingredient.name);
    TextEditingController qty =
        TextEditingController(text: ingredient.quantity?.toString());
    Metric? selectedMetric = ingredient.metric;
    return Slidable(
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          onPressed: (_) {
            context.read<CreateRecipeBloc>().add(
                CreateRecipeEvent.deleteIngredient(ingredient: ingredient));
          },
          backgroundColor: Theme.of(context).colorScheme.error,
          icon: Icons.delete_outline,
        ),
      ]),
      child: ListTile(
        leading: Container(
          width: 30,
          height: 30,
          color: Colors.white,
          child: Image.network(
            ingredient.ingredient.picUrl ?? "",
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image),
          ),
        ),
        title: Focus(
          onFocusChange: (value) {
            if (!value) {
              context.read<CreateRecipeBloc>().add(
                  CreateRecipeEvent.editIngredientName(
                      ingredient: ingredient, name: name.text));
            }
          },
          child: TextFormField(
            controller: name,
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
            Focus(
              onFocusChange: (value) {
                if (!value) {
                  context.read<CreateRecipeBloc>().add(
                      CreateRecipeEvent.editIngredientQuantity(
                          ingredient: ingredient,
                          quantity: int.tryParse(qty.text)));
                }
              },
              child: SizedBox(
                  width: 48,
                  child: TextFormField(
                    controller: qty,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: "qty".tr(),
                      counterStyle: const TextStyle(
                        height: double.minPositive,
                      ),
                      counterText: "",
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  )),
            ),
            BlocBuilder<MetricCubit, MetricState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => LoadingIndicator(
                    size: 15,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  error: (_) => const Text("failed to load data"),
                  loaded: ((metrics) {
                    return DropdownButton<Metric?>(
                      style: Theme.of(context).textTheme.bodyMedium,
                      value: selectedMetric,
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
                        context.read<CreateRecipeBloc>().add(
                            CreateRecipeEvent.editIngredientMetric(
                                ingredient: ingredient, metric: value));
                      },
                      items: metrics.metrics
                          .map<DropdownMenuItem<Metric>>((value) {
                        return DropdownMenuItem<Metric>(
                          value: value,
                          child: Text(value != null ? value.abbrev : ""),
                        );
                      }).toList(),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
