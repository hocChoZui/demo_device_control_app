import 'package:flutter/material.dart';

class InfraredScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hồng ngoại')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.sensors, size: 100, color: Colors.orange),
            SizedBox(height: 20),
            Text('Tín hiệu hồng ngoại: Đang hoạt động',
                style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
