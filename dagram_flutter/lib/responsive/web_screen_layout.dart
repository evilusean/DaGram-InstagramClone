import 'package:flutter/material.dart';
import 'package:dagram_flutter/utils/colors.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This is web'),
      ),
    );
  }
}