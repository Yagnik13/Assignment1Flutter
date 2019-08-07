// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './result.dart';

void main() => runApp(AssignmentApp());

class AssignmentApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentAppState(); //_ClassName - means private classs
  }
}

class _AssignmentAppState extends State<AssignmentApp> {
  // user defined function
  var finalString = "";

  void setText() {
    setState(() {
      finalString = finalString;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Assignement Demo'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Name', icon: Icon(Icons.tag_faces)),
                  onChanged: (value) {
                    finalString = value;
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Set your text!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: setText,
                ),
                Result(finalString),
              ],
            ),
          )),
    );
  }
}
