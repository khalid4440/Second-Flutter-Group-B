import 'package:flutter/material.dart';
import 'page3_Birds.dart';
import 'page4_reptile.dart';
import 'page5_fish.dart';
import 'page6_mammal.dart';

class SecondPage extends StatelessWidget {
  final List<String> categories = ['طيور', 'زواحف', 'أسماك', 'ثديّات'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الصفحة الثانية')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BirdsPage()));
                    break;
                  case 1:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ReptilesPage()));
                    break;
                  case 2:
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => FishPage()));
                    break;
                  case 3:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MammalsPage()));
                    break;
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
