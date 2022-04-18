import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSections1() => PieData.data
    .asMap()
    .map<int, PieChartSectionData>((index, data) {
      final value = PieChartSectionData(

        radius: 80,
        color: data.color,
        value: data.percent,
        title: "${data.percent}%",
        titleStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
      );
      return MapEntry(index, value);
    })
    .values
    .toList();

class PieData {
  static List<Data> data = [
    Data('Groups', 60, Colors.purple),
    Data('Broadcasts', 10, Colors.blue),
    Data('Chats', 30, Colors.pink),
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;

  Data(this.name, this.percent, this.color);
}
