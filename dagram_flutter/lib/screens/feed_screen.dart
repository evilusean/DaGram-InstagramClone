import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        centerTitle: false,
        title: SvgPicture.asset('assets/DaGram.svg', 
        color: primaryColor, height: 32,
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.messenger_outline,
            ),
          ),
        ],
      ),
      body: const PostCard(),
    );
  }
}