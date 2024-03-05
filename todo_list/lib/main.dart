import 'package:flutter/material.dart';
import 'package:todo_list/advance_todo.dart';
import 'package:todo_list/basic_todo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(
      //     inputDecorationTheme: const InputDecorationTheme(
      //         border: OutlineInputBorder(
      //   borderSide: BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
      // ))),
      debugShowCheckedModeBanner: false,
      home:  AdvanceTodo(),
    );
  }
}

