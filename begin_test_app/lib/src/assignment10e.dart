import 'package:flutter/material.dart';
class Assignemnt10e extends StatefulWidget{
  const Assignemnt10e({super.key});
  @override
  State<Assignemnt10e> createState()=> _Assignment10e();
  
  

}
class _Assignment10e extends State<Assignemnt10e>{
 int selectedIndex =0;
 List<String> imageList =[
  
  "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
  "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
  "https://st2.depositphotos.com/1643295/42541/i/380/depositphotos_425416004-stock-photo-pensive-indian-developer-checking-structure.jpg",
  
 ];
 @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Asset images"),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageList[selectedIndex], 
          height: 150,
          width: 150,),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                selectedIndex = selectedIndex +1; 
                if(selectedIndex==imageList.length){
                  selectedIndex=0;
                }
              });
            }, 
            child: const Text("Next"))
          
        ],
      ),
    ),
  );
 }

}