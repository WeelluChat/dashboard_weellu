import 'package:flutter/material.dart';

class SiteSettingsScreen extends StatelessWidget {
  const SiteSettingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      child: const Center(
        child: Text(
          'Site Settings Screen',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
