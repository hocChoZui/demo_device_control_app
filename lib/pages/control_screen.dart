import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:interactive_slider/interactive_slider.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ControlScreen extends StatefulWidget {
  @override
  _ControlScreenState createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  double _sliderValue = 0;
  bool _isSwitch = false;
  double _volumeValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Điều chỉnh nhiệt độ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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

              ],
            ),
            SizedBox(height: 20),
            Text(
              'Bật tắt hồng ngoại',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Toggle Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedToggleSwitch.dual(
                  current: _isSwitch,
                  first: false,
                  second: true,
                  spacing: 45,
                  animationDuration: Duration(milliseconds: 500),
                  style: const ToggleStyle(
                    borderColor: Colors.transparent,
                    indicatorColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  customStyleBuilder: (context, local, global) {
                    if (global.position <= 0) {
                      return ToggleStyle(
                        backgroundColor: Colors.red[800],
                      );
                    }
                    return ToggleStyle(
                      backgroundGradient: LinearGradient(
                        colors: [Colors.green, Colors.red[800]!],
                        stops: [
                          global.position -
                              (1 - 2 * max(0, global.position - 0.5)) * 0.7,
                          global.position +
                              max(0, 2 * (global.position - 0.5)) * 0.7,
                        ],
                      ),
                    );
                  },
                  borderWidth: 6,
                  height: 60,
                  loadingIconBuilder: (context, global) => CupertinoActivityIndicator(
                    color: Color.lerp(Colors.red[800], Colors.green, global.position),
                  ),
                  onChanged: (value) => setState(() => _isSwitch = value),
                  iconBuilder: (value) => value
                      ? const Icon(
                    Icons.power_outlined,
                    color: Colors.green,
                    size: 32,
                  )
                      : Icon(
                    Icons.power_settings_new_rounded,
                    color: Colors.red[800],
                    size: 32,
                  ),
                  textBuilder: (value) => value
                      ? const Center(child: Text("Active"))
                      : const Center(child: Text('Inactive')),
                ),
              ],
            ),

            // InteractiveSlider
            SizedBox(height: 20),
            Text(
              'Điều chỉnh âm lượng',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            InteractiveSlider(
              iconPosition: IconPosition.inside,
              startIcon: Icon(CupertinoIcons.volume_down),
              endIcon: Icon(CupertinoIcons.volume_up),
              unfocusedHeight: 40,
              focusedHeight: 50,
              iconGap: 16,
              onChanged: (newValue) {
                setState(() {
                  _volumeValue = newValue;
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
