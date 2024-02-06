import 'package:flutter/material.dart';
import 'package:test_app/src/assignment10e.dart';
import 'package:test_app/src/assignment10g.dart';
import 'package:test_app/src/assignment10h.dart';
import 'package:test_app/src/assignment10i.dart';
import 'package:test_app/src/assignment10j.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Assignment10j(),
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