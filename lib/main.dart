import 'package:flutter/material.dart';
import 'package:nft_marketplace/pages/home/home_page.dart';
import 'package:nft_marketplace/pages/home/navigation_page.dart';
import 'package:nft_marketplace/pages/nft_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
        '/nft-detail': (context) => const NftDetailPage(),
      },
      home: const NavigationPage(),
    );
  }
}
