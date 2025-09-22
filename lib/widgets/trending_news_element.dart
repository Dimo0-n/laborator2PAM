import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const TrendingCard({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, // lățimea cardului
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 190,  // înălțimea imaginii
            fit: BoxFit.contain, // păstrează proporțiile
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
