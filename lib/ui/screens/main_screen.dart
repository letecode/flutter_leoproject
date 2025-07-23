import 'package:flutter/material.dart';
import 'package:leoproject/l10n/app_localizations.dart';
import 'package:leoproject/ui/screens/home/home_screen.dart';
import 'package:leoproject/ui/screens/home/notifications_screen.dart';
import 'package:leoproject/ui/screens/home/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<String> fruits = [
    "Banana", "Avocat", "Mangue"
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
  ];

  List<Widget> screens = [
    HomeScreen(),
    NotificationsScreen(),
    SettingsScreen()
  ];

  final pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: screens,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/profile");
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: (index) {
          pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      )
    );
  }
}