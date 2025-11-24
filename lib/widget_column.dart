import 'package:flutter/material.dart';

class WidgetColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Column')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Baris 1'),
          Text('Baris 2'),
          Text('Baris 3'),
        ],
      ),
    );
  }
}
