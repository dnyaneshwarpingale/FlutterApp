import 'package:flutter/material.dart';
import 'package:test_app/src/assignment10e.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignemnt10e(),
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