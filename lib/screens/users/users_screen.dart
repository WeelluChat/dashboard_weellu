import 'package:dashboard/screens/users/components/user_list.dart';
import 'package:dashboard/widgets/custom_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/baseboard.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: const [
          CustomTitle(
            title: 'Users',
          ),
          UserList(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: BaseBoard(),
          )
        ],
      ),
    );
  }
}
