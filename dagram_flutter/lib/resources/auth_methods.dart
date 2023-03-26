import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:typed_data';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    // required Uint8List file,  || file != null
  }) async {
      String res = "Some error occured.";
      try {
        if(email.isNotEmpty || password.isNotEmpty || username.isNotEmpty || bio.isNotEmpty){
          // Register User
          UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

          print(cred.user!.uid);
          // Add User to Firestore database
          await _firestore.collection('users').doc(cred.user!.uid).set({
            "username": username,
            "uid": cred.user!.uid,
            "email": email,
            "bio": bio,
            'followers': [],
            'following': [],
          });
          res = "Success!";
        }
      } catch(err) {
        res = err.toString();
      }
      return res;
  }
}