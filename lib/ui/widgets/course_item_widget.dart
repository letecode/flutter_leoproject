import 'package:flutter/material.dart';

class CourseItemWidget extends StatelessWidget {
  final String title;

  const CourseItemWidget({super.key, required this.title});

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