import 'package:flutter/material.dart';
import 'responsive/responsive_layout_screen.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/responsive/mobile_screen_layout.dart';
import 'package:dagram_flutter/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DaGram-Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
         webScreenLayout: WebScreenLayout(),
        ),
    );
  }
}


