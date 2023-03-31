import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/widgets/comment_card.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({ Key? key }) : super(key: key);

  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        title: const Text('Comments'),
        centerTitle: false,
      ),
      body: CommentCard(),
      bottomNavigationBar: SafeArea(
      child: Container(
        height: kToolbarHeight,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        padding: const EdgeInsets.only(left: 17, right: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/evilusean/DaGram-InstagramClone/main/Images/anderson-rian-P9q5aGTt3FE-unsplash.jpg',
              ),
              radius: 18,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Comment as username',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8,),
                child: const Text('Post', style: TextStyle(
                  color: blueColor,
                ),
              ),
              ),
            )
          ],
        )
        )
      )
    );
  }
}