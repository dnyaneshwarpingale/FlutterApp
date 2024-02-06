import 'package:flutter/material.dart';
class Assignment10c extends StatelessWidget{
  const Assignment10c({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello Core2Web"),

      ),
      body: Center(child: Container(
        height: 200,
        width: 360,
        color: Colors.blue,)),
    );
  }
}