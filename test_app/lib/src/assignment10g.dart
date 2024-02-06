import 'package:flutter/material.dart';

class Assignment10g extends StatefulWidget{
  const Assignment10g({super.key});
  @override
  State<Assignment10g> createState()=> _Assignment10gState();

}
class _Assignment10gState extends State<Assignment10g>{
  List<String> imageList =[];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal scroll Images "),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder:(context, index) {
          return Container(
            height:300 ,
            width:150,
            margin: const EdgeInsets.all(10),
            // child: ,
          );
        },),
    );
  }
}