import 'package:flutter/material.dart';

class LiveBidsCard extends StatelessWidget {
  const LiveBidsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 280,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage('img_nft_1.png'),
            ),
          ),
        ),
      ],
    );
  }
}
