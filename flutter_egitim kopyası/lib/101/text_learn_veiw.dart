// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextlearnView extends StatelessWidget {
  TextlearnView({super.key, this.userName});
  final String name = 'mert';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ('welcome $name ${name.length}'),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: TextStyle(
              color: ProjectColors.welcomeColor,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              wordSpacing: 2,
              letterSpacing: 2,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
        Text(
          ('welcome $name ${name.length}'),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          ('welcome $name ${name.length}'),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black,
              ),
        ),
        Text(userName ?? ''),
        Text(keys.welcome),
      ],
    )));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.red,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 24,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.blue;
}

class ProjectKeys {
  final String welcome = 'merhaba';
}
