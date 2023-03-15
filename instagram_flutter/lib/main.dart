import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckModeBanner: false,
      title: 'DaGram Clone',
      theme: ThemeData.dark(),
      home: Text(title: 'DaGram Day 1'),
    );
  }
}
