import 'package:dashboard/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseBoard extends StatelessWidget {
  const BaseBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 65,
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('weellu.com.br @2022'),
          ],
        ),
      ),
    );
  }
}
