import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/image_picker_dialog.dart';

class PosterInput extends StatelessWidget {
  const PosterInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Stack(
          children: [
            InkWell(
              child: Container(
                height: 165,
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).colorScheme.secondary,
                child: state.recipe?.posterPicUrl != null
                    ? Image.network(
                        state.recipe!.posterPicUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error_outline),
                      )
                    : const Icon(
                        Icons.add_a_photo_outlined,
                        size: 36,
                      ),
              ),
              onTap: () async {
                showDialog(
                    context: context,
                    builder: (_) =>
                        const ImagePickerDialog()).then((value) => value != null
                    ? ImagePicker().pickImage(source: value).then((value) =>
                        value != null
                            ? context.read<CreateRecipeBloc>().add(
                                CreateRecipeEvent.addRecipePoster(file: value))
                            : null)
                    : null);
              },
            ),
            if (state.recipe?.posterPicUrl != null) ...{
              Positioned(
                bottom: 2,
                right: 0,
                child: GestureDetector(
                  child: Icon(
                    Icons.delete_outline,
                    size: 22,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onTap: () {
                    context.read<CreateRecipeBloc>().add(
                          CreateRecipeEvent.deletePoster(
                              picUrl: state.recipe!.posterPicUrl!,
                              context: context),
                        );
                  },
                ),
              ),
            }
          ],
        );
      },
    );
  }
}
