import 'package:flutter/material.dart';
class Assignment10h extends StatelessWidget{
  const Assignment10h({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bordered Container "),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child:Container(
        alignment: Alignment.center,
        height: 500,
        width: 500,
        // color: Colors.blue,
       decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.red,
        width: 10),
       ),
       
        margin:const EdgeInsets.all(10),
        
      ),

    ));
  }
}