import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(),
      floatingActionButton: new FloatingActionButton(
          tooltip: "Add Item",
          backgroundColor: Colors.deepOrangeAccent,
          child: new ListTile(
            title: new Icon(Icons.add),
          ),
          onPressed: showFormDialog),
    );
  }
  void showFormDialog() {

  }
  }
