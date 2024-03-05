import 'package:flutter/material.dart';
import 'package:test_app/src/assignment10e.dart';
import 'package:test_app/src/assignment10g.dart';
import 'package:test_app/src/assignment10h.dart';
import 'package:test_app/src/assignment10i.dart';
import 'package:test_app/src/assignment10j.dart';
import 'package:test_app/src/lifecycle.dart';
import 'package:test_app/src/listviewSeparated.dart';
import 'package:test_app/src/locationdemo.dart';
import 'package:test_app/src/rewards.dart';
import 'package:test_app/src/texfielddemo.dart';
import 'package:test_app/src/textfield.dart';
import 'package:test_app/src/todolist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: AppUsageRewards(),
      debugShowCheckedModeBanner: false,
    );
  }
}




// Assignment 4 
//  class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title:'Flutter Demo',
//       theme:ThemeData(
//       colorScheme:ColorScheme.fromSeed(
//         seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title:'Flutter Demo Home Page'),

//       );
    
//   }
// }