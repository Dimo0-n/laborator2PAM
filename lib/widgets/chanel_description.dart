import 'package:flutter/material.dart';

class ChannelDescription extends StatelessWidget {
  const ChannelDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Forbes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.verified,
                color: Colors.blue,
                size: 20,
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Descrierea
          Text(
            'Empowering your business journey with expert insights and influential perspectives.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}