import 'package:dashboard/screens/siteSettings/components/siteSettings_body.dart';
import 'package:dashboard/widgets/baseboard.dart';
import 'package:dashboard/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: const [
            CustomTitle(
              title: 'Landing Page',
            ),
            LandingPageBody(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: BaseBoard(),
            ),
          ],
        ),
      ),
    );
  }
}
