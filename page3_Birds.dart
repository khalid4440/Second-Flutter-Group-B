import 'package:flutter/material.dart';

class BirdsPage extends StatelessWidget {
  final List<String> birds = [
    'images/طيور.jpeg',
    'images/طيور2.jpeg',
    'images/طيور3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الطيور')),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: birds.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.asset(birds[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
