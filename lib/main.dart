import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // for localizations (support multi languages)
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sarrafi/providers/ThemeProvider.dart';
import 'package:sarrafi/ui/MainWrapper.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // ensure we are initialized binding before do the next line
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]); // prevent from landscape (charkhandan gooshi)
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, newThemeProvider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: newThemeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        home: const Directionality(
          textDirection: TextDirection.ltr,
          child: MainWrapper(),
        ),
      );
    });
  }
}
