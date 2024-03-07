import 'package:flutter/material.dart';
class PaddingAssignment extends StatelessWidget{
  const PaddingAssignment({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "padding and margin",
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Container(
            color: Colors.red,
            height: 250,
            width: 250,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
          child: Image.network(
            "https://static-cse.canva.com/blob/825910/ComposeStunningImages6.jpg"
            ),
          ),
        ),
      ),
    );
  }
}