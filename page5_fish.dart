import 'package:flutter/material.dart';

class FishPage extends StatelessWidget {
  final List<String> fish = [
    'images/اسماك.jpeg',
    'images/اسماك2.jpeg',
    'images/اسماك3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الأسماك')),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: fish.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.asset(fish[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
