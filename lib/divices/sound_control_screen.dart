import 'package:flutter/material.dart';

class SoundControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Âm thanh')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.volume_up, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text('Âm lượng hiện tại: 70%', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
