import 'package:flutter/material.dart';
import 'package:leoproject/ui/screens/main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Bienvenue sur Leon App"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/home");
              },
              child: Text("Continuer")
          )
        ],
      ),
    );
  }
}
