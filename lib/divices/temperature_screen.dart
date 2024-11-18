import 'package:flutter/material.dart';

class TemperatureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nhiệt độ')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thermostat, size: 100, color: Colors.red),
            SizedBox(height: 20),
            Text('Nhiệt độ hiện tại: 27°C', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
