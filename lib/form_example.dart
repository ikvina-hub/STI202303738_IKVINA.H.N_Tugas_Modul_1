import 'package:flutter/material.dart';

class FormExamplePage extends StatefulWidget {
  @override
  _FormExamplePageState createState() => _FormExamplePageState();
}

class _FormExamplePageState extends State<FormExamplePage> {
  final _formKey = GlobalKey<FormState>();
  String nama = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Example')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama'),
                validator: (value) =>
                    value!.isEmpty ? 'Nama tidak boleh kosong' : null,
                onSaved: (value) => nama = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Halo \$nama!')),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
