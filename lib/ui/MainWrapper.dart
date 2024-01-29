import 'package:flutter/material.dart';
import 'package:sarrafi/ui/HomePage.dart';
import 'package:sarrafi/ui/MarketViewPage.dart';
import 'package:sarrafi/ui/ProfilePage.dart';
import 'package:sarrafi/ui/WatchListPage.dart';
import 'package:sarrafi/ui/ui_helper/BottomNav.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          const MarketViewPage(),
          const ProfilePage(),
          const WatchListPage(),
        ],
      ),
      bottomNavigationBar: BottomNav(controller: pageController),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.compare_arrows_outlined,
        ),
      ),
    );
  }
}
