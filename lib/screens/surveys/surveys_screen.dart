import 'package:dashboard/screens/surveys/components/surveys_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import '../../widgets/custom_title.dart';

class SurveysScreen extends StatelessWidget {
  const SurveysScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Surveys',
          ),
          SurveysList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
