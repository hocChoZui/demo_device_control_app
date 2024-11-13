import 'package:devide_control_app/pages/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:devide_control_app/pages/DeviceScreen.dart';
import 'package:devide_control_app/pages/ControlScreen.dart';

void main() => runApp(MyApp());

  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
  scaffoldBackgroundColor: Colors.white,
  ),
  routes: {
  "/": (context) => HomeScreen(),
  }
  );
  }
  }
