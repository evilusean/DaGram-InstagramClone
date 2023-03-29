import "package:dagram_flutter/utils/colors.dart";
import "package:flutter/material.dart";

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mobileBackgroundColor,
      padding: const EdgeInsets.symmetric(
        vertical: 8.0
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 16,
              ).copyWith(right: 0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(
                      'https://raw.githubusercontent.com/evilusean/DaGram-InstagramClone/main/Images/anderson-rian-P9q5aGTt3FE-unsplash.jpg',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}