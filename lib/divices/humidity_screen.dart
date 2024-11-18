import 'package:flutter/material.dart';

class HumidityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Độ ẩm')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.water_drop, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text('Độ ẩm hiện tại: 65%', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
