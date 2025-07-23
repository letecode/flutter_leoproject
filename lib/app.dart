import 'package:flutter/material.dart';
import 'package:leoproject/themes/dark_theme.dart';
import 'package:leoproject/themes/light_theme.dart';
import 'package:leoproject/ui/screens/main_screen.dart';
import 'package:leoproject/ui/screens/profile_screen.dart';
import 'package:leoproject/ui/screens/welcome_screen.dart';

import 'l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const MainScreen(title: "Hello"),
        '/profile': (context) => const ProfileScreen(),
      }
    );
  }
}