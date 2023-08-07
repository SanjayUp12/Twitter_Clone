import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
            Text(
              '@0050',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
