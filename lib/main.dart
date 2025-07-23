import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:leoproject/l10n/app_localizations.dart';
import 'package:leoproject/themes/dark_theme.dart';
import 'package:leoproject/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Leon App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> fruits = [
    "Banana", "Avocat", "Mangue"
  ];

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(AppLocalizations.of(context)!.title, style: Theme.of(context).textTheme.titleLarge,),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String title;

  const CourseItem({super.key, required this.title});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Image.network("https://www.letecode.com/storage/articles/May2022/2DmfKYhZgXQcAACgs6sU.jpg", width: 100, height: 100,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(""),
              Text("Application mobile Flutter")
            ],
          ),
        )
      ],
    );
  }
  
}
