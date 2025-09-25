import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab2/widgets/chanel_description.dart';
import 'package:lab2/widgets/navbar_secundar.dart';
import 'package:lab2/widgets/trending_news.dart';
import '../widgets/chanel_info.dart';
import '../widgets/navbar_principale.dart';
import '../widgets/recommendation_post.dart';
import '../widgets/search_bar.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBarSecund(title: "forbesnews"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChannelInfo(
              logoPath: 'assets/forbes_logo.png',
              newsCount: 6800,
              followers: 2500,
              following: 100,
            ),
            ChannelDescription(),
            SearchBa(),
            RecommendationWidget(isHomePage: false,),
          ],
        ),
      ),
    );
  }
}