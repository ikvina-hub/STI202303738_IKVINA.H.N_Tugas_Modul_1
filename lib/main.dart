import 'package:flutter/material.dart';
import 'hello_world.dart';
import 'widget_column.dart';
import 'widget_row.dart';
import 'stateless_stateful.dart';
import 'form_example.dart';
import 'fungsi_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Modul 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Hello World', 'page': HelloWorldPage()},
    {'title': 'Widget Column', 'page': WidgetColumnPage()},
    {'title': 'Widget Row', 'page': WidgetRowPage()},
    {'title': 'Stateless & Stateful Widget', 'page': StatelessStatefulPage()},
    {'title': 'Form', 'page': FormExamplePage()},
    {'title': 'Fungsi Widget', 'page': FungsiWidgetPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Tugas Modul 1')),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index]['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => menuItems[index]['page']),
            ),
          );
        },
      ),
    );
  }
}
