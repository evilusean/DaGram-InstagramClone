import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/widgets/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dagram_flutter/utils/colors.dart';
import 'package:dagram_flutter/utils/global_variables.dart';
import 'package:dagram_flutter/widgets/post_card.dart';


class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width > webScreenSize 
      ? null
      : AppBar(
        backgroundColor: MediaQuery.of(context).size.width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width > webScreenSize ? MediaQuery.of(context).size.width * 0.3: 0,
              ),
              child: PostCard(
                snap: snapshot.data!.docs[index].data(),
                      ),
            ),
          );
        }
      ),
    );
  }
}