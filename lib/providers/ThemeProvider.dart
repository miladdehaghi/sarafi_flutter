// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkmode => themeMode == ThemeMode.dark;

  void toggleTheme() async {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // update and rebuild the widget
  }
}

const primaryColor = Colors.blueAccent;
const primaryColorDark = Color(0xFF2962FF);

class MyThemes {
  static final darkTheme = ThemeData(
    colorSchemeSeed: primaryColorDark,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(backgroundColor: primaryColorDark),
    // appBarTheme: const AppBarTheme(backgroundColor: primaryColorDark),
    // iconTheme: const IconThemeData(color: Colors.red, opacity: 1, size: 30),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.ubuntu(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      bodySmall: GoogleFonts.ubuntu(color: Colors.white, fontSize: 15),
      labelSmall: GoogleFonts.ubuntu(color: Colors.white54, fontSize: 13),
      titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
    ),
  );

  static final lightTheme = ThemeData(
      colorSchemeSeed: primaryColor,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(backgroundColor: primaryColor),
      bottomAppBarTheme: const BottomAppBarTheme(color: primaryColor),
      iconTheme: const IconThemeData(color: Colors.black54),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.ubuntu(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        bodySmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 15),
        labelSmall: GoogleFonts.ubuntu(color: Colors.black38, fontSize: 13),
        titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor)

      // iconTheme: const IconThemeData(color: Colors.red, opacity: 1, size: 30),
      );
}


// class MyThemes {
//   static final darkTheme = ThemeData(
//     appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent[700]),
//     textTheme: TextTheme(
//       titleLarge: GoogleFonts.ubuntu(
//           color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
//       bodySmall: GoogleFonts.ubuntu(color: Colors.white, fontSize: 15),
//       labelSmall: GoogleFonts.ubuntu(color: Colors.white54, fontSize: 13),
//       titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
//     ),
//     unselectedWidgetColor: Colors.white70,
//     primaryColorLight: Colors.black,
//     scaffoldBackgroundColor: Colors.grey.shade900,
//     primaryColor: Colors.blueAccent[700],
//     secondaryHeaderColor: Colors.white,
//     iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
//   );

//   static final lightTheme = ThemeData(
    
//     appBarTheme: const AppBarTheme(backgroundColor: Colors.blueAccent),
//     textTheme: TextTheme(
//       titleLarge: GoogleFonts.ubuntu(
//           color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
//       bodySmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 15),
//       labelSmall: GoogleFonts.ubuntu(color: Colors.black38, fontSize: 13),
//       titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
//     ),
//     unselectedWidgetColor: Colors.black,
//     primaryColorLight: Colors.white,
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: Colors.blueAccent,
//     secondaryHeaderColor: Colors.black,
//     iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
//   );
// }