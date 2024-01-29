import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sarrafi/ui/ui_helper/HomePageView.dart';
import 'package:sarrafi/ui/ui_helper/ThemeSwitcher.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sarrafi"),
          actions: const [ThemeSwitcher()],
          centerTitle: true,
          titleTextStyle: textTheme.titleLarge,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // slider
              SizedBox(
                width: double.infinity,
                height: 160,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                      child: MyHomePageView(pageController: _pageController),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 25,
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: 4,
                          effect: const ExpandingDotsEffect(
                              dotWidth: 10, dotHeight: 10),
                          onDotClicked: (index) {
                            _pageController.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
                child: Marquee(
                  text: "🔊 this is where you share app news  |  ",
                  style: textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}
