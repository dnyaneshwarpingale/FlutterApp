import 'package:flutter/material.dart';
class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});
  @override
  State<Assignment5> createState()=> _Assignment5State();

}
class _Assignment5State extends State<Assignment5>{
  int _count =0;
  void printTableValue(){
    setState(() {
      _count = _count + 2;
    });
  }

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      title: const Text(
        "Table of 2 ",),

    ),
    body:Center(
      child:Column(
        children: [
          const Text(
            "Click button to print table value ",),
            const SizedBox(
              height: 20,
            ),
            Text(
            '$_count',),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: printTableValue, 
              child: const Text('Print'))
        ],
      ) ,)
  );
}
}