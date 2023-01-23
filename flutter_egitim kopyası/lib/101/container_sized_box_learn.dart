// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 10),
          ),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            width: 100,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 50, maxHeight: 200, minHeight: 100),
            child: Text(
              'aa' * 100,
              maxLines: 2,
            ),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
                ],
                gradient: LinearGradient(colors: [Colors.red, Colors.green]),
                shape: BoxShape.rectangle,
                border: Border.all(width: 10, color: Colors.white12)),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.red,
      boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
      gradient: LinearGradient(colors: [Colors.red, Colors.green]),
      shape: BoxShape.circle,
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            color: Colors.red,
            boxShadow: [BoxShadow(color: Colors.green, offset: Offset(0.1, 1))],
            gradient: LinearGradient(colors: [Colors.red, Colors.green]),
            shape: BoxShape.circle,
            border: Border.all(width: 10, color: Colors.white12));
}
