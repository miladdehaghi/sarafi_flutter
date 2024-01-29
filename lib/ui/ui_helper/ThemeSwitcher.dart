// ignore_for_file: file_names

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:sarrafi/providers/ThemeProvider.dart";

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    var switchIcon = Icon((themeProvider.isDarkmode)
        ? CupertinoIcons.sun_max_fill
        : CupertinoIcons.moon_fill);
    return IconButton(
        onPressed: () {
          themeProvider.toggleTheme();
        },
        icon: switchIcon);
  }
}
