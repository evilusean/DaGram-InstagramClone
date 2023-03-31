import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  CommentCard({Key? key}) : super(key:key);

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16,),
      child: Row(
        children: [
         CircleAvatar(
          backgroundImage: NetworkImage('https://raw.githubusercontent.com/evilusean/DaGram-InstagramClone/main/Images/anderson-rian-P9q5aGTt3FE-unsplash.jpg',
          ),
         radius: 18,
         ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'username',
                      style: const TextStyle(fontWeight: FontWeight.bold,),
                    ),
                    TextSpan(
                      text: 'random inscriptsean needed',
                    ),
                  ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top:4),
                  child: Text(
                    '30/03/2023', 
                    style: TextStyle(
                      fontSize: 12, 
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Icon(Icons.favorite, size: 16),
        ),
        ],
      ),
    );
  }

}