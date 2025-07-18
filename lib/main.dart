import 'package:flutter/material.dart';
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
          Text("Bienvenue", style: Theme.of(context).textTheme.titleLarge,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            ),
          ),
          //
          Text("Layout relative"),
          //
          // Row(
          //   spacing: 8,
          //   children: [
          //     Stack(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.black,
          //         ),
          //         Positioned(
          //           bottom: 10,
          //           left: 10,
          //           child: Text("Item", style: TextStyle(color: Colors.white),)
          //         ),
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.black,
          //         ),
          //         Positioned(
          //             bottom: 10,
          //             left: 10,
          //             child: Text("Item", style: TextStyle(color: Colors.white),)
          //         ),
          //       ],
          //     ),
          //     Stack(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.black,
          //         ),
          //         Positioned(
          //             bottom: 10,
          //             left: 10,
          //             child: Text("Item", style: TextStyle(color: Colors.white),)
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          //
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It"),
          //
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CourseItem(title: "Flutter",),
                  CourseItem(title: "Android",),
                  CourseItem(title: "Ios",),
                  CourseItem(title: "Ios",),
                  CourseItem(title: "Ios",),
                  CourseItem(title: "Ios",),
                  CourseItem(title: "Ios",),
                ],
              ),
            ),
          ),
          // Text("Text"),
          // Flexible(
          //   child: Container(color: Colors.red,)
          // ),
          // Text("After"),
      
          // Wrap(
          //   spacing: 8,
          //   children: [
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //     Chip(label: Text("item 1")),
          //   ],
          // )
          // Expanded(
          //   child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3 // nombre par ligne,
          //       crossAxisSpacing: 4,
          //       mainAxisSpacing: 4
          //     ),
          //     itemBuilder: (context, index) {
          //       return Container(color: Colors.red, child: Text("item $index", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 40,)));
          //     },
          //     itemCount: 10,
          //   ),
          // )
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
