import 'package:flutter/material.dart';
class Assignment10j extends StatelessWidget{
  const Assignment10j({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Corners Are Rounded"),
        backgroundColor: Color.fromARGB(255, 173, 80, 72),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.red,
            width: 10,
            ),
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(20), 
              bottomRight: Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}