import 'package:flutter/material.dart';
import 'package:nft_marketplace/theme.dart';
import 'package:nft_marketplace/widgets/creator_card.dart';
import 'package:nft_marketplace/widgets/live_bids_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    appBar() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 46,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/ic_search.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search NFT',
                          hintStyle: subtitleTextStyle2,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/ic_mic.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 18,
            ),
            Image.asset(
              'assets/images/ic_notification_dot.png',
              width: 46,
            ),
          ],
        ),
      );
    }

    Widget sectionTitle(String titleName) {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          bottom: 12,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleName,
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            Text(
              'See More',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget contentLiveBids() {
      return Container(
        height: 400,
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          clipBehavior: Clip.none,
          children: const [
            LiveBidsCard(),
            LiveBidsCard(),
            LiveBidsCard(),
          ],
        ),
      );
    }

    Widget contentTopCreator() {
      return Container(
        height: 150,
        margin: const EdgeInsets.only(bottom: 32),
        padding: const EdgeInsets.only(left: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CreatorCard(),
            CreatorCard(),
            CreatorCard(),
          ],
        ),
      );
    }

    return ListView(
      shrinkWrap: true,
      children: [
        appBar(),
        sectionTitle('Live Bids'),
        contentLiveBids(),
        sectionTitle('Top Creator'),
        contentTopCreator(),
      ],
    );
  }
}
