import 'package:dashboard/screens/user_profile/components/user_profile.dart';
import 'package:dashboard/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import '../../models/bar_chart_data.dart';
import '../../widgets/baseboard.dart';
import '../dashboard/components/chat_analysis_chart.dart';
import 'components/user_activity_piechart.dart';
import 'components/user_groups_table.dart';
import 'components/user_piechart.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          const CustomTitle(
            title: 'User Profile',
          ),
          const UserProfileDetails(),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              UserActivityPieChart(),
              UserPieChart(),
            ],
          ),
          ChatsAnalysisChart(data: BarChartCData.data),
          UserGroupsTable(pageController: _pageController),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
