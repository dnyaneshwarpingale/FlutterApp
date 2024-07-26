import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget{
  const GridViewWidget({super.key});

  @override
  State createState()=> _GridViewState();

}

class _GridViewState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("GridView Demo") ,
      ),
      body:  GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          ), 
          padding: const EdgeInsets.all(8.0),
          itemCount: 5,
        itemBuilder: (context, index){
          return Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            color: Colors.amber,
            child:Text("${index+1}")
          );
        }),
    );
  }
}