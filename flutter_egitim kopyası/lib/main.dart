import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/container_sized_box_learn.dart';
import 'package:flutter_application_2/101/scaffold_learn.dart';
import 'package:flutter_application_2/101/text_learn_veiw.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ScaffoldLearnView(),
    );
  }
}
