import 'package:dashboard/config/constants.dart';
import 'package:dashboard/models/profile_info_card_model.dart';
import 'package:flutter/material.dart';

import 'info_card.dart';

class UserProfileCardBuilder extends StatefulWidget {
  UserProfileCardBuilder({Key key}) : super(key: key);
  final ProfileInfoModel profileInfoModel = ProfileInfoModel();

  @override
  State<UserProfileCardBuilder> createState() => _UserProfileCardBuilderState();
}

class _UserProfileCardBuilderState extends State<UserProfileCardBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        childAspectRatio: 1.5,
        mainAxisExtent: 301,
      ),
      itemCount: infoData.length,
      itemBuilder: (context, index) {
        return InfoCard(
          bodyColor: bgColor,
          arrowIcon: infoDatas[index].arrowIcon,
          arrowIconColor: infoDatas[index].arrowIconColor,
          percentage: infoDatas[index].percentage,
          icon: infoDatas[index].icon,
          iconColor: infoDatas[index].color,
          color: infoDatas[index].color,
          title: infoDatas[index].title,
          quantity: infoDatas[index].quantity,
          colors: [
            infoDatas[index].color.withOpacity(.1).withAlpha(30),
            infoDatas[index].color,
          ],
          spots: infoDatas[index].spots,
        );
      },
    );
  }
}
