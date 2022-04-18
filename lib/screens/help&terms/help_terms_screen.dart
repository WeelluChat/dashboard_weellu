import 'package:flutter/material.dart';

class HelpTermsScreen extends StatelessWidget {
  const HelpTermsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
      child: const Center(
        child: Text(
          'Help & Terms Screen',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
