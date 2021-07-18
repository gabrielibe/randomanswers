import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 var element = 'Go ahead ask,IF YOU DARE';
 void randomiser(){
    setState(() {
      var list = ['yes', 'no', 'maybe', 'go fuck yourself'];

// generates a new Random object
      final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
      print(list[3]);
      element = list[Random().nextInt(list.length)];
     // List <String> answer =['yes', 'no', 'maybe', 'go fuck yourself'];
       //element = (answer..shuffle()).first;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.teal.shade500,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title:
            Text('ASK ME ANYTHING'),
          ),
        body:Center(
        child: Container(
          width: 200,
          height: 110,
          child: RaisedButton(
            onPressed: (){
             randomiser();

            },
            child: Text('$element'),
          ),
        ),
        ),
        ),
      );
  }
}
