import 'package:dashboard/config/constants.dart';
import 'package:dashboard/widgets/profile_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_search_field.dart';
import 'components/body.dart';
import 'components/custom_sidebar.dart';

class HomeScreen extends StatelessWidget {
  final PageController pageController = PageController();
  HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Row(
        children: [
          SideBar(pageController: pageController),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
              ),
              child: Scaffold(
                appBar: AppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Henrique! 😊',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // Text(
                      //   'Wellcome to your Dashboard',
                      //   style: Theme.of(context).textTheme.subtitle2,
                      // ),
                    ],
                  ),
                  backgroundColor: bgColor,
                  elevation: 0,
                  actions: const [
                    SearchField(),
                    ProfileCard(),
                  ],
                ),
                body: Body(pageController: pageController),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
