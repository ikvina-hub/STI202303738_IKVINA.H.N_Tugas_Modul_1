import 'package:flutter/material.dart';

class FungsiWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fungsi Widget')),
      body: Center(
        child: buildCustomText('Ini dipanggil dari fungsi'),
      ),
    );
  }

  Widget buildCustomText(String teks) {
    return Text(
      teks,
      style: TextStyle(fontSize: 22, color: Colors.green),
    );
  }
}
