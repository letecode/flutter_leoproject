import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          children: [
            Text("Settings"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: false).pushNamed("/profile");
                },
                child: Text("Profile")
            )
          ],
        ),
      ),
    );
  }
}
