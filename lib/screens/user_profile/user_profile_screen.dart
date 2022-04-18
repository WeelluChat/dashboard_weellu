import 'package:dashboard/screens/user_profile/components/user_profile.dart';
import 'package:dashboard/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import 'components/user_groups_table.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const CustomTitle(
              title: 'User Profile',
            ),
            const UserProfileDetails(),
            UserGroupsTable(pageController: _pageController),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: BaseBoard(),
            )
          ],
        ),
      ),
    );
  }
}
