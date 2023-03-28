import 'package:flutter/material.dart';
import 'package:dagram_flutter/utils/colors.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();

  class _MobileScreenLayoutState extends State<MobileScreenLayout> {
    String username = "";
    
    @override
    void initState() {
      super.initState();
      getUsername();
    }

    void GetUsername() async {
      DocumentSnapshoy snap = FirebaseFirestore.instance
        .collection('users')
        .doc(Firebase data()
        .get();

    print(snap.data())
    };
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