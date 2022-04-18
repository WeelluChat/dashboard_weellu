import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

import '../../../config/constants.dart';

class UserGroupsTable extends StatelessWidget {
  const UserGroupsTable({
    Key key,
    @required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          children: [
            Container(
              height: 50,
              child: TabBar(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.blueAccent,
                ),
                onTap: (index) {
                  _pageController.jumpToPage(index);
                },
                tabs: const [
                  Tab(
                    text: 'Groups',
                  ),
                  Tab(
                    text: 'Broadcasts',
                  ),
                  Tab(
                    text: 'Reported Groups',
                  ),
                  Tab(
                    text: 'Reported Broadcasts',
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
