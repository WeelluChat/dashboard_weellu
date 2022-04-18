import 'package:dashboard/models/bar_chart_data.dart';
import 'package:dashboard/screens/dashboard/components/status_line_chart.dart';
import 'package:dashboard/screens/dashboard/components/users_pie_chart.dart';
import 'package:dashboard/widgets/baseboard.dart';
import 'package:dashboard/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import 'components/card_builder.dart';
import 'components/chat_analysis_chart.dart';
import 'components/users_activity_pie_chart.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          const CustomTitle(
            title: 'Dashboard',
          ),
          CardBuilder(),
          // Center(
          //   child: Container(
          //     margin: const EdgeInsets.only(bottom: 30),
          //     child: const GeoChart(),
          //   ),
          // ),
          ChatsAnalysisChart(data: BarChartCData.data),
          const StatusLineChart(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              UsersActivityPieChart(),
              UsersPieChart(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
