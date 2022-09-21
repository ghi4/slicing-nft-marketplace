import 'package:flutter/material.dart';
import 'package:nft_marketplace/theme.dart';

class LiveBidsCard extends StatelessWidget {
  const LiveBidsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget liveCounter() {
      return Container(
        width: 204,
        height: 36,
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        child: Row(
          children: [
            Image.asset(
              'assets/images/badge_live.png',
              width: 46,
            ),
            const SizedBox(
              width: 4,
            ),
            Image.asset(
              'assets/images/ic_time.png',
              width: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              '22h : 25m : 09s',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    return Container(
      width: 280,
      height: 400,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/images/img_nft_1.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          liveCounter(),
          liveCounter(),
        ],
      ),
    );
  }
}
