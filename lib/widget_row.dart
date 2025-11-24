import 'package:flutter/material.dart';

class WidgetRowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Row')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(width: 10),
            Text('Ini contoh Row Widget'),
          ],
        ),
      ),
    );
  }
}
