import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class noDueTask extends StatelessWidget {
   String taskName;
   String dateCreated;
   int id;

   noDueTask(this.taskName,this.dateCreated);
   noDueTask.map(dynamic obj) {
     this.taskName =obj["taskName"];
     this.dateCreated =obj["dateCreated"];
     this.id = obj["id"];
   }
   String get _taskName => taskName;
   String get _dateCreated => dateCreated;
   int get _id => id;

   Map<String, dynamic> toMap() {
     var map = new Map<String, dynamic>();
     map["taskName"] = _taskName;
     map["dateCreated"] = _dateCreated;

     if(id !=null) {
       map["id"] = _id;
     }
     return map;
   }
    noDueTask.fromMap(Map<String, dynamic>map) {

     this.taskName = map["taskName"];
     this.dateCreated = map["dateCreated"];
     this.id = map["id"];
   }
   @override
   Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.all(8.0),
       child: new Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text(taskName,
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 17.0
           ),),
     new Container(
       margin: const EdgeInsets.all( 5.0),
            child: Text("Created on :$taskName"),
     )
         ],
       ),
     );
   }
 }
 