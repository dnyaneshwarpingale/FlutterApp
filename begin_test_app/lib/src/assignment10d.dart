import 'package:flutter/material.dart';
class Assignment10d extends StatelessWidget{
  const Assignment10d({super.key});
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Center(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children:
           [
           Container(
           height: 100,
           width: 100,
           color: Colors.blueGrey,
           ),
          const SizedBox(
            width: 20,
           ),
           Container(
            height: 100,
            width: 100,
            color: Colors.redAccent,
           )
          ],
        )
      ),
    );
  }
}