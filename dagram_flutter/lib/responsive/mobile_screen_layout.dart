import 'package:flutter/material.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:dagram_flutter/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dagram_flutter/resources/storage_methods.dart';
import 'package:dagram_flutter/models/user.dart' as model;

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}
  class _MobileScreenLayoutState extends State<MobileScreenLayout> {
    String username = "";
    
    @override
    void initState() {
      super.initState();
      getUsername();
    }

    void getUsername() async {
      DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    print(snap.data());
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is mobile'),
      ),
    );
  }
}