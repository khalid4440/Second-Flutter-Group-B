import 'package:flutter/material.dart';

class ReptilesPage extends StatelessWidget {
  final List<String> reptiles = [
    'images/زواحف.jpeg',
    'images/زواحف2.jpeg',
    'images/زواحف3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الزواحف')),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: reptiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Image.asset(reptiles[index], fit: BoxFit.cover);
        },
      ),
    );
  }
}
