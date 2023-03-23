import 'package:flutter/material.dart';
import 'package:dagram_flutter/utils/colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is mobile'),
      ),
    );
  }
}