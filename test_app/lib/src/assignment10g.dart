import 'package:flutter/material.dart';

class Assignment10g extends StatefulWidget{
  const Assignment10g({super.key});
  @override
  State<Assignment10g> createState()=> _Assignment10gState();

}
class _Assignment10gState extends State<Assignment10g>{
  List<String> imageList =[
    "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
  "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
  "https://st2.depositphotos.com/1643295/42541/i/380/depositphotos_425416004-stock-photo-pensive-indian-developer-checking-structure.jpg",
  "https://st4.depositphotos.com/14803258/19880/i/380/depositphotos_198808184-stock-photo-athletic-adult-man-headphones-doing.jpg",
  "https://media.gettyimages.com/id/175280583/photo/medhaghat-waterfall.jpg?s=1024x1024&w=gi&k=20&c=QkOrn5IcjUFI_rrsPWrDowFBPLw6VHpFwtb8UmEuTns=",
  
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal scroll Images "),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder:(context, index) {
          return Container(
            height:300 ,
            width:330,
            margin: const EdgeInsets.all(20),
            child: Image.network(imageList[index]) ,
          );
        },),
    );
  }
}