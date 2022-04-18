import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../config/constants.dart';

class SideBar extends StatelessWidget {
  final PageController pageController;
  const SideBar({
    Key key,
    this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Drawer(
        elevation: 2,
        backgroundColor: secondaryColor,
        child: SingleChildScrollView(
          // it enables scrolling
          child: Column(
            children: [
              DrawerHeader(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Image.asset(
                    "assets/images/5.png",
                    scale: 2,
                    height: 55,
                    width: 55,
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "Weellu",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              )),
              DrawerListTile(
                title: "Dashboard",
                icon: Icons.dashboard,
                press: () {
                  pageController.jumpToPage(0);
                },
              ),
              DrawerListTile(
                title: "Users",
                icon: Icons.person,
                press: () {
                  pageController.jumpToPage(1);
                },
              ),
              DrawerListTile(
                title: "Groups",
                icon: Icons.people_outline,
                press: () {
                  pageController.jumpToPage(2);
                },
              ),
              DrawerListTile(
                title: "Broadcasts",
                icon: FlutterIcons.megaphone_ent,
                press: () {
                  pageController.jumpToPage(3);
                },
              ),
              DrawerListTile(
                title: "Calls",
                icon: Icons.phone_in_talk_sharp,
                press: () {
                  pageController.jumpToPage(4);
                },
              ),
              DrawerListTile(
                title: "Surveys",
                icon: Icons.query_stats_outlined,
                press: () {
                  pageController.jumpToPage(5);
                },
              ),
              DrawerListTile(
                title: 'Stories',
                icon: Icons.motion_photos_on,
                press: () {
                  pageController.jumpToPage(6);
                },
              ),
              DrawerListTile(
                title: 'Stores',
                icon: Icons.shopping_cart,
                press: () {
                  pageController.jumpToPage(7);
                },
              ),
              DrawerListTile(
                title: "Site Settings",
                icon: Icons.settings_outlined,
                press: () {
                  pageController.jumpToPage(8);
                },
              ),
              DrawerListTile(
                title: "App Update",
                icon: Icons.system_update,
                press: () {
                  pageController.jumpToPage(9);
                },
              ),
              DrawerListTile(
                title: "Site Images",
                icon: Icons.image_search,
                press: () {
                  pageController.jumpToPage(10);
                },
              ),
              DrawerListTile(
                title: "Notifications",
                icon: Icons.notifications_active,
                press: () {
                  pageController.jumpToPage(11);
                },
              ),
              DrawerListTile(
                title: "SEO",
                icon: Icons.bar_chart_rounded,
                press: () {
                  pageController.jumpToPage(12);
                },
              ),
              DrawerListTile(
                title: "Help & Terms",
                icon: Icons.help_outline,
                press: () {
                  pageController.jumpToPage(13);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    this.title,
    this.icon,
    this.press,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.white54,
        size: 18,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54, fontSize: 18),
      ),
    );
  }
}
