import 'package:flutter/material.dart';
import 'package:device_control_app/divices/humidity_screen.dart';

import '../divices/infrared_screen.dart';
import '../divices/light_screen.dart';
import '../divices/sound_control_screen.dart';
import '../divices/temperature_screen.dart';


class DeviceScreen extends StatefulWidget {
  @override
  _DiviceSreenState createState() => _DiviceSreenState();
}

class _DiviceSreenState extends State<DeviceScreen>{

  final List<Map<String, dynamic>> features = [
    {'title': 'Nhiệt độ', 'icon': Icons.thermostat, 'screen': TemperatureScreen()},
    {'title': 'Độ ẩm', 'icon': Icons.water_drop, 'screen': HumidityScreen()},
    {'title': 'Ánh sáng', 'icon': Icons.lightbulb, 'screen': LightScreen()},
    {'title': 'Âm thanh', 'icon': Icons.volume_up, 'screen': SoundControlScreen()},
    {'title': 'Hồng ngoại', 'icon': Icons.sensors, 'screen': InfraredScreen()},
  ];



  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    padding: EdgeInsets.all(10),
    itemCount: features.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context,  MaterialPageRoute(
            builder: (context) => features[index]['screen'],
          ),);
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(features[index]['icon'], size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text(features[index]['title'],
                  style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      );
    },
  ),
);
  }
}
