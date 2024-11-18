import 'package:flutter/material.dart';

class LightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ánh sáng')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lightbulb, size: 100, color: Colors.yellow),
            SizedBox(height: 20),
            Text('Độ sáng hiện tại: 500 Lux', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
