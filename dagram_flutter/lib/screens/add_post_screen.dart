import 'package:dagram_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen ({ Key? key}) : super(key: key);

  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: IconButton(
    //     icon: const Icon(Icons.upload),
    //     onPressed: () {},
    //   )
    // );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
      ),
      title: const Text('Post To'),
      centerTitle: false,
      actions: [
        TextButton(onPressed: () {}, child: const Text('Post', style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),),)
      ],
    ),
    );
  }
}