import 'package:device_control_app/bar_graph/individual_bar.dart';

class BarData{
  final double temperature;
  final double humidity;
  final double light;
  final double infrared;
  final double sound;

  BarData({
    required this.temperature,
    required this.humidity,
    required this.light,
    required this.infrared,
    required this.sound,
});
  List<IndividualBar> barData = [];

  void initializeBarData (){
    barData = [
      IndividualBar(x: 1, y: temperature),
      IndividualBar(x: 2, y: humidity),
      IndividualBar(x: 3, y: light),
      IndividualBar(x: 4, y: infrared),
      IndividualBar(x: 5, y: sound),
    ];
  }
}