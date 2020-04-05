import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/model/noDueTask.dart';
import 'package:todoapp/database_client.dart';


class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final TextEditingController textEditingController = new TextEditingController();
  var db = new DatabaseHelper();
  void handleSubmitted(String text) async {
    textEditingController.clear();
    noDueTask _noDueTask = new noDueTask(text, DateTime.now().toIso8601String());
    int savedItemId = await db.saveItem(_noDueTask);
    print("item saved: $savedItemId");
  }
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
    var alert = new AlertDialog(
      content: new Row(
        children: <Widget>[
          new Expanded(child: new TextField(
            controller: textEditingController,
            autofocus: true,
            decoration: new InputDecoration(
              labelText: "Item",
              hintText: "eg. Go shopping",
              icon: new Icon(Icons.note_add)
            ),
          )),
        ],
      ),
      actions: <Widget>[
        new FlatButton(onPressed: (){
          handleSubmitted(textEditingController.text);  },
//          textEditingController.clear();
            child: Text("Save")),
        new FlatButton(onPressed: () => Navigator.pop(context),
            child: Text("Canncel"))
      ],
    );
    showDialog(context: context,
    builder:(_) {
      return alert;
    });
  }
  }
