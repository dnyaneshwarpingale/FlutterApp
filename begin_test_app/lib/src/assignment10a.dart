import 'package:flutter/material.dart';
class Assignment10a extends StatelessWidget{
  const Assignment10a({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.green,
        title: const Text("DaPPs"),
        actions:const [
           Icon(Icons.favorite),
          Icon(Icons.abc_outlined)
        ],
      ),
    );
  }
}