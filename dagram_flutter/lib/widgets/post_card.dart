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
            //Header SectSean
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
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 8
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('username', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {
                    showDialog(context: context, builder: (context) => Dialog(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(vertical: 16,),
                        shrinkWrap: true,
                        children: [
                          'Delete',
                        ].map(
                          (e) => InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              child: Text(e),
                          ),
                        ),
                      )
                      .toList(),
                      ),
                    ),
                    );
                  }, 
                  icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
            //Image SectSean
            SizedBox(
              height: MediaQuery.of(context).size.height*0.35,
              width: double.infinity,
              child: Image.network(
                'https://raw.githubusercontent.com/evilusean/DaGram-InstagramClone/main/Images/anderson-rian-P9q5aGTt3FE-unsplash.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
    );
  }
}