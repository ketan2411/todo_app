import 'package:flutter/material.dart';
import 'ToDoScreen.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("ToDo",
          style: new TextStyle(
            color: Colors.black
          ),),
        backgroundColor: Colors.deepOrange,
      ),
      body: new ToDoScreen(),
    );
  }

}