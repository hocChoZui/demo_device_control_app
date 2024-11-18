import 'package:flutter/material.dart';
import 'package:device_control_app/bar_graph/bar_graph.dart';


class HomeTabScreen extends StatelessWidget {
  final List<double> deviceSummary;

  HomeTabScreen({required this.deviceSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          child: BarGraph(
            deviceSummary: deviceSummary,
          ),
        ),

      ],
    );
  }
}