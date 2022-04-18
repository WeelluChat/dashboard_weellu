import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import '../../widgets/custom_title.dart';
import 'components/broadcast_list.dart';

class BroadcastsScreen extends StatelessWidget {
  const BroadcastsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Broadcasts',
          ),
          BroadcastList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
