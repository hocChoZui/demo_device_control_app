import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'bar_data.dart';

class BarGraph extends StatelessWidget{

  final List deviceSummary ;

  const BarGraph ({
    super.key,
    required this.deviceSummary,
  });

  @override
  Widget build(BuildContext context){
    BarData barData = BarData(
        temperature: deviceSummary[0],
        humidity: deviceSummary[1],
        light: deviceSummary[2],
        infrared: deviceSummary[3],
        sound: deviceSummary[4]
    );
    barData.initializeBarData();

    return BarChart(
      BarChartData(
      maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
       titlesData: FlTitlesData(
         topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
         bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,getTitlesWidget: getBottomTitles,
         ),
         ),
       ),
        barGroups: barData.barData
          .map((data)=> BarChartGroupData(
            x: data.x,
          barRods: [BarChartRodData(toY: data.y,
            color: Colors.grey[800],
            width: 25,
            borderRadius: BorderRadius.circular(4),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY:100,
              color: Colors.grey[200],
            )
          )],
        ),
        ).toList(),
      )
    );
  }
}

Widget getBottomTitles (double value, TitleMeta meta){
  const style= TextStyle(
    color: Colors.grey,
    fontSize: 14,
    fontWeight: FontWeight.bold
  );
  late Widget text;
  switch (value.toInt()){
    case 1:
      text = const Text('Nhiệt dộ', style: style,);
          break;
    case 2:
      text = const Text('Độ ẩm', style: style,);
      break;
    case 3:
      text = const Text('Ánh sáng', style: style,);
      break;
    case 4:
      text = const Text('Hồng ngoại', style: style,);
      break;
    case 5:
      text = const Text('Âm thanh', style: style,);
      break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}