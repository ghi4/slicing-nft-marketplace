import 'package:flutter/material.dart';
import 'package:nft_marketplace/theme.dart';

class CreatorCard extends StatelessWidget {
  const CreatorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/profile_2.png',
              width: 58,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '1Cyborg',
            style: primaryTextStyle,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '\$3.350.100',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
