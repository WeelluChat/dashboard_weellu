import 'package:flutter/material.dart';

class AppUpdateScreen extends StatelessWidget {
  const AppUpdateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      child: const Center(
        child: Text(
          'App Update Screen',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
