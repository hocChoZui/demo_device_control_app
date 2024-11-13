import 'package:flutter/material.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen>{
  double _sliderValue = 0;
  bool _isSwitch = false;

  void _incrementValue(){
    setState(() {
      _sliderValue = (_sliderValue + 2).clamp(0, 100);
    });
  }

  void _decrementValue() {
    setState(() {
      _sliderValue = (_sliderValue - 2).clamp(0, 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Device Control"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: _decrementValue,
                ),
                Expanded(
                  child: Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 50, // Steps of 2
                    label: _sliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: _incrementValue,
                ),
              ],
            ),
            Text('Slider Value: ${_sliderValue.toInt()}'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Toggle Switch: '),
                Switch(
                  value: _isSwitch,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitch = value;
                    });
                  },
                ),
              ],
            ),
            Text('Switch is ${_isSwitch ? "ON" : "OFF"}'),
          ],
        ),
      ),
    );
  }
}
