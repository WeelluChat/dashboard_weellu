import 'package:dashboard/screens/calls/calls_screen.dart';
import 'package:dashboard/screens/surveys/surveys_screen.dart';
import 'package:dashboard/screens/user_profile/components/user_profile.dart';
import 'package:dashboard/screens/user_profile/user_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../screens.dart';
import '../../stores/stores_screen.dart';
import '../../stories/stories_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: [
        UserProfileScreen(),
        DashboardScreen(),
        const UsersScreen(),
        const UserGroupsScreen(),
        const BroadcastsScreen(),
        const CallsScreen(),
        const SurveysScreen(),
        const StoriesScreen(),
        const StoresScreen(),
        const SiteSettingsScreen(),
        const AppUpdateScreen(),
        const SiteImagesScreen(),
        const NotificationsScreen(),
        const SEOScreen(),
        const HelpTermsScreen(),
      ],
    );
  }
}
