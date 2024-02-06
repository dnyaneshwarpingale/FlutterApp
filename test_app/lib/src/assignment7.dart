import 'package:flutter/material.dart';
class Assignment7 extends StatefulWidget{
  const Assignment7({super.key});
  @override
  State<Assignment7> createState()=>_Assignment7State(); 
    
}
class _Assignment7State extends State<Assignment7>{
  int? selectedIndex =0;

  final List<String> imageList =[ 
  "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
  "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
  "https://st2.depositphotos.com/1643295/42541/i/380/depositphotos_425416004-stock-photo-pensive-indian-developer-checking-structure.jpg",
  "https://st4.depositphotos.com/14803258/19880/i/380/depositphotos_198808184-stock-photo-athletic-adult-man-headphones-doing.jpg",
  ];
   void showNextImage(){
    
    setState(() {
      selectedIndex = selectedIndex!+1;
      if(selectedIndex==imageList.length){
        selectedIndex=0;
      }
    });
   }
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images "
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showNextImage, 
              child: const Text("Next")),
              const SizedBox(
                height:20,
              ),
              ElevatedButton(
                onPressed:(){
                  setState(() {
                    selectedIndex=0;
                  });
                }, 
                child: const Text("Reset")),
          ],
        ),)
    );
   }
}
