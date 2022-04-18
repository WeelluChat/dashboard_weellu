import 'package:dashboard/models/info_card_model.dart';
import 'package:flutter/material.dart';

import 'info_card.dart';

class CardBuilder extends StatefulWidget {
  CardBuilder({Key key}) : super(key: key);
  final InfoModel infoModel = InfoModel();

  @override
  State<CardBuilder> createState() => _CardBuilderState();
}

class _CardBuilderState extends State<CardBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, crossAxisSpacing: 5, childAspectRatio: 1.3),
      itemCount: infoData.length,
      itemBuilder: (context, index) {
        return InfoCard(
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
