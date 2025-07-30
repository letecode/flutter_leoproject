import 'package:flutter/material.dart';
import 'package:leoproject/ui/screens/main_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Bienvenue sur Leon App"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(_createRoute());
                  // // Navigator.of(context).pushNamed("/home");
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: Text("Afficher")
            ),
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0,
              duration: Duration(milliseconds: 400),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MainScreen(title: "Hello"),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // 0.0 , 1.0
        const end = Offset.zero;
        const curve = Curves.bounceIn;
        // final tween = Tween(begin: begin, end: end);
        // final offsetAnimation = animation.drive(tween);

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(position: tween.animate(curvedAnimation), child: child);
      },
    );
  }
}
