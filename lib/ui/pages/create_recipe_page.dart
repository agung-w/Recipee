import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/ui/widgets/large_text_input.dart';
import 'package:ta_recipe_app/services/picture_services.dart';

class CreateRecipePage extends StatefulWidget {
  const CreateRecipePage({super.key});

  @override
  State<CreateRecipePage> createState() => _CreateRecipePageState();
}

class _CreateRecipePageState extends State<CreateRecipePage> {
  String? str;
  UploadTask? uploadTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("save_button").tr(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("publish_button").tr(),
            ),
          )
        ],
      ),
      body: Column(children: [
        InkWell(
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.amber,
            child: str != null ? Image.network(str!) : null,
          ),
          onTap: () async {
            str = await PictureServices().uploadPosterPicture(await getImage());
            setState(() {});
          },
        ),
        LargeTextInput(
          hint: "title_place_holder".tr(),
        )
      ]),
    );
  }
}

Future<XFile?> getImage() async {
  return ImagePicker().pickImage(source: ImageSource.gallery);
}
