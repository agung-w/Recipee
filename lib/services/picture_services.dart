import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class PictureServices {
  Future<String?> uploadPicture({XFile? picture, required String type}) async {
    if (picture != null) {
      String fileName = basename(picture.path);
      Reference ref = FirebaseStorage.instance
          .ref()
          .child(type)
          .child(DateTime.now().millisecondsSinceEpoch.toString() + fileName);
      UploadTask uploadTask = ref.putFile(File(picture.path));
      final snapshot = await uploadTask.whenComplete(() {});
      final uploadedUrl = await snapshot.ref.getDownloadURL();
      return uploadedUrl;
    }
    return null;
  }

  Future<ApiResult> deletePicture({required String picUrl}) async {
    final desertRef = FirebaseStorage.instance.refFromURL(picUrl);
    try {
      await desertRef.delete();
      return const ApiResult.success("Delete success");
    } on FirebaseException catch (e) {
      return ApiResult.success("Failed with error '${e.code}': ${e.message}");
    }
  }
}
