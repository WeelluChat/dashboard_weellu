import 'package:dashboard/screens/calls/components/calls_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import '../../widgets/custom_title.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Calls',
          ),
          CallsList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
