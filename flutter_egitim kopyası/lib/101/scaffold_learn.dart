import 'package:flutter/material.dart';

import 'container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Scaffold Dneme')),
      body: Text('aa'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        // ignore: prefer_const_literals_to_create_immutables
        child: BottomNavigationBar(items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'ekin'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'mert'),
        ]),
      ),
    );
  }
}
