import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  static Future<String> uploadImageProfile(File file) async {
    String imagePath = file.path.split('/').last;

    Reference ref =
        FirebaseStorage.instance.ref().child('avatar').child(imagePath);
    UploadTask task = ref.putFile(file);
    TaskSnapshot snapshot = await task;
    String imgUrl = await snapshot.ref.getDownloadURL();
    return imgUrl;
  }

  static Future<String> uploadImagePoster(File file) async {
    String imagePath = file.path.split('/').last;

    Reference ref =
        FirebaseStorage.instance.ref().child('images').child(imagePath);
    UploadTask task = ref.putFile(file);
    TaskSnapshot snapshot = await task;
    String imgUrl = await snapshot.ref.getDownloadURL();
    return imgUrl;
  }
}
