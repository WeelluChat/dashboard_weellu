import 'package:dashboard/screens/stores/components/stores_list.dart';
import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';
import '../../widgets/custom_title.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Stores',
          ),
          StoresList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
