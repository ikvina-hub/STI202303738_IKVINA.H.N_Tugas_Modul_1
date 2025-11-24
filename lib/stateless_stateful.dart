import 'package:flutter/material.dart';

class StatelessStatefulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless vs Stateful')),
      body: Center(child: CounterWidget()),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void tambah() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Nilai Counter: \$counter', style: TextStyle(fontSize: 24)),
        SizedBox(height: 10),
        ElevatedButton(onPressed: tambah, child: Text('Tambah'))
      ],
    );
  }
}
