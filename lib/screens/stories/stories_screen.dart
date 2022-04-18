import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import '../../widgets/custom_title.dart';
import 'components/stories_list.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Stories',
          ),
          StoriesList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
