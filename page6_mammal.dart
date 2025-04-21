import 'package:flutter/material.dart';

class MammalsPage extends StatelessWidget {
  final List<String> mammals = [
    'images/ثديات.jpeg',
    'images/ثديات2.jpeg',
    'images/ثديات3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الثديّات')),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: mammals.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.asset(mammals[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
