import 'package:class_test/common/my_button.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  final String name = "Kehar";

  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Screen'),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return MyButton(
            text: name[index],
          );
        }),
      ),
    );
  }
}
