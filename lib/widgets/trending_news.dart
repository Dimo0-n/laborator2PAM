import 'package:flutter/material.dart';
import 'package:lab2/widgets/trending_news_element.dart';

class TrendingNewsWidget extends StatelessWidget {
  const TrendingNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Textul de sus
          Row(
            children: [
              Text(
                'Trending news',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'See all    ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: const [
                TrendingCard(title: 'Global Summit on Climate\n'
                    'Change: Historic Agreement Reached', imagePath: 'assets/img_1.png',
                  source: "BBC News",
                  date: "Jun 9, 2023",),
                TrendingCard(title: 'Global Summit on Climate\n '
                    'Change: Historic Agreement Reached', imagePath: 'assets/img_1.png',
                  source: "BBC News",
                  date: "Jun 9, 2023",),
                TrendingCard(title: 'Global Summit on Climate\n '
                    'Change: Historic Agreement Reached', imagePath: 'assets/img_1.png',
                  source: "BBC News",
                  date: "Jun 9, 2023",),
              ],
            ),
          ),
          const SizedBox(height: 12),

        ],
      ),
    );
  }
}