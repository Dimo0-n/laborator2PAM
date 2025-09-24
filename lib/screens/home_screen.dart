import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab2/widgets/trending_news.dart';
import '../widgets/navbar_principale.dart';
import '../widgets/recommendation_post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(title: ""),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 24),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome back, Tyler!\n',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Discover a world of news that matters to you',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TrendingNewsWidget(),
            RecommendationWidget(),
          ],
        ),
      ),
    );
  }
}