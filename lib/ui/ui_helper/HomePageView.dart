import 'package:flutter/material.dart';

class MyHomePageView extends StatelessWidget {
  final PageController pageController;
  MyHomePageView({super.key, required this.pageController});

  final List<String> imageUrls = [
    "assets/images/a1.png",
    "assets/images/a2.png",
    "assets/images/a3.png",
    "assets/images/a4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true,
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: imagePageView(imageUrls.length),
    );
  }

  List<ClipRRect> imagePageView(int imageLength) {
    List<ClipRRect> clipRRectWidgets = [];
    for (int i = 0; i < imageLength; i++) {
      clipRRectWidgets.add(
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: Image(
            image: AssetImage(imageUrls[i]),
            height: 300,
            fit: BoxFit.fill,
          ),
        ),
      );
    }
    return clipRRectWidgets;
  }
}
