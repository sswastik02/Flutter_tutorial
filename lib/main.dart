//https://www.youtube.com/watch?v=GLSG_Wh_YWc
import 'package:flutter/material.dart';
import './entries_manager.dart'; // very simmilar to java

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // converted to stateless as now the inner widgets are stateful or stateless
  // divide into components or widgets to make work easier
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        //brightness: Brightness.dark, // dark theme
        accentColor: Colors.deepPurpleAccent,
      ),
      // this is how you include theme data (Use of primary swatch is recommended literally everything is red)
      home: Scaffold(
          appBar: AppBar(
            title: Text('Distro'),
          ),
          body:
              // EntriesManager(), // default constructor (its there  even if u dont define it)
              EntriesManager('Linux Distro')),
    );
  }
}
