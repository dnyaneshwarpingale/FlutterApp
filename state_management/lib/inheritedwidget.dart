import 'package:flutter/material.dart';
import 'package:state_management/infoscreen.dart';
import 'package:state_management/modelclass.dart';

class InheritadState extends StatelessWidget{
  InheritadState({super.key});
 final TextEditingController idController = TextEditingController();
 final TextEditingController nameController = TextEditingController();
 final TextEditingController userNameController = TextEditingController();
 @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title:const Text("InheritedWidget")),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Column(
        children: [
          const SizedBox(height: 50,),
          TextField(
            controller:idController ,
            decoration: const InputDecoration(
              hintText: "id",
              border: OutlineInputBorder(),
            ),
          ),
          const  SizedBox(height: 20,),
          TextField(
            controller:nameController ,
             decoration: const InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller:userNameController ,
             decoration: const InputDecoration(
              hintText: "username",
              border: OutlineInputBorder(),
            ),
          ),
         const SizedBox(height: 20,),
         ElevatedButton(
          onPressed: (){
           
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>  UserData(id:idController.text, name: nameController.text, username: userNameController.text, child: const InfoScreen())),
  );                     }, 
         child:const Text("Submit")),
        ],
      ),
    ),
  );
 } 
}