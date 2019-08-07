import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //variables
  String resultText;

  //constructor
  Result(this.resultText);

  String get setString {
    var finalString;
    finalString = resultText.replaceAll('Hello ', '');
    finalString = resultText.replaceAll('!', '');
    finalString = 'Hello ' + resultText + '!';
    return finalString;
  }

  //widgets
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        setString,
        style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
      ),
    );
  }
}
