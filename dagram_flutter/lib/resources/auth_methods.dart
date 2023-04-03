import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:typed_data';
import 'package:dagram_flutter/resources/storage_methods.dart';
import 'package:dagram_flutter/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot snap = await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(snap);
  }

  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
      String res = "Some error occured.";
      try {
        if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty){
          // Register User || file != null
          UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

          print(cred.user!.uid);

          String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file, false);

          // Add User to Firestore database

          model.User user = model.User(
            username: username,
            uid: cred.user!.uid,
            email: email,
            bio: bio,
            followers: [],
            following: [],
            photoUrl: photoUrl,
          );

          await _firestore.collection('users').doc(cred.user!.uid).set(user.toJson(),);

          res = "Success!";
        }
      } catch(err) {
        res = err.toString();
      }
      return res;
  }
  // Logging User in
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = "An Error Occured.";

    try {
      if(email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = "Success!";
      } else (
        res = "Please fill in all fields required.");
    } catch(err) {
      res = err.toString();
    }
    return res;
  }
  Future<void> signOut() async {
    await _auth.signOut();
  }
} 