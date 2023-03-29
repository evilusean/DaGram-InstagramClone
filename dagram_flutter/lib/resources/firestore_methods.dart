

import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dagram_flutter/models/post.dart';
import 'package:dagram_flutter/resources/storage_methods.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //Upload Post
  Future<String> uploadPost(
    String description,
    Uint8List file,
    String uid,
    String profImage,
  ) async {
    String res = "An Error Occured.";
    try {
      String photoUrl = await StorageMethods().uploadImageToStorage('posts', file, true);

      Post post = Post(
        description: description,
        uid: uid,
        username: username,
        postId: ,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profImage: profImage,
      )
    }
  }
}