import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Container(
      child: const Center(
        child: Text(
          'Notifications Screen',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
