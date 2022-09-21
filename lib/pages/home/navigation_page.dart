import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/home/home_page.dart';
import 'package:nft_marketplace/theme.dart';
import 'package:nft_marketplace/widgets/creator_card.dart';
import 'package:nft_marketplace/widgets/live_bids_card.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: backgroundColor1,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          selectedItemColor: accentColor3,
          unselectedItemColor: subtitleTextColor2,
          onTap: (page) {
            setState(() {
              currentPage = page;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_home.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_explore.png'),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_wallet.png'),
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_bid.png'),
              ),
              label: 'Live Bids',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_profile.png'),
              ),
              label: 'Live Bids',
            ),
          ],
        ),
      );
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: const HomePage(),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }
}
