import 'package:flutter/material.dart';

class MarketViewPage extends StatelessWidget {
  const MarketViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.bar_chart),
          Text("MarketView Page"),
        ],
      ),
    );
  }
}
