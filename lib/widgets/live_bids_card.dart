import 'package:flutter/material.dart';
import 'package:nft_marketplace/theme.dart';

class LiveBidsCard extends StatelessWidget {
  const LiveBidsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Decoration boxDecoration = BoxDecoration(
      color: Colors.white.withOpacity(0.6),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.white,
        width: 1,
      ),
    );

    Widget liveCounter() {
      return Container(
        width: 206,
        height: 36,
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 6,
        ),
        decoration: boxDecoration,
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

    Widget nftInfo() {
      return Container(
        width: 248,
        // height: 57,
        margin: const EdgeInsets.only(
          bottom: 15,
          left: 16,
          right: 16,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 11,
        ),
        decoration: boxDecoration,
        child: Row(
          children: [
            // Profile Photo
            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/profile_1.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),

            // NFT Name and Creator Name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astroboy #001',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'By Bryan Wan',
                        style: primaryTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/images/badge_checklist_blue.png',
                        width: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Highest Bid
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/ic_ethereum.png',
                      width: 9,
                    ),
                    Text(
                      '2.70 ETH',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Highest Bid',
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
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
          nftInfo(),
        ],
      ),
    );
  }
}
