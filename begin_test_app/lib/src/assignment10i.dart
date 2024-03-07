import 'package:flutter/material.dart';
class Assignment10i extends StatelessWidget{
  const Assignment10i({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Corners Are Rounded"),
        backgroundColor: Color.fromARGB(255, 173, 80, 72),
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.red,
            width: 10,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}