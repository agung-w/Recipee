import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

class PictureServices {
  Future<String?> uploadPosterPicture(XFile? picture) async {
    if (picture != null) {
      String fileName = basename(picture.path);
      Reference ref =
          FirebaseStorage.instance.ref().child("recipe-poster").child(fileName);
      UploadTask uploadTask = ref.putFile(File(picture.path));
      final snapshot = await uploadTask.whenComplete(() {});
      final uploadedUrl = await snapshot.ref.getDownloadURL();
      return uploadedUrl;
    }
    return null;
  }
}
