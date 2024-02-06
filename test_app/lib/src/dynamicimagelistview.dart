import 'package:flutter/material.dart';
class DisplayImages extends StatefulWidget{
  const DisplayImages({super.key});
  @override
  State createState()=> _DisplayImagesState();

}
class _DisplayImagesState extends State {
  List<String> imageList= [
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
  "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
  "https://st2.depositphotos.com/1643295/42541/i/380/depositphotos_425416004-stock-photo-pensive-indian-developer-checking-structure.jpg",
  "https://st4.depositphotos.com/14803258/19880/i/380/depositphotos_198808184-stock-photo-athletic-adult-man-headphones-doing.jpg",
  ];
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("list view Builder Demo"),

      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
              imageList[index]
            ),
          );
        }),
    );

  }
}