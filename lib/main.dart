import 'package:flutter/material.dart';
import 'package:todoapp/ui/Home.dart';

void main () => runApp(new AppHome());
class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false  ,
      title: 'ToDo',
      home: new Home(),
    );
  }

}