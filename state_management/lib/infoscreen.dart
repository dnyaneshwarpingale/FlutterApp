import 'package:flutter/material.dart';
import 'package:state_management/modelclass.dart';
import 'package:state_management/skills.dart';

class InfoScreen extends StatelessWidget{
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context){
    UserData obj = UserData.of(context);
    return Scaffold(
      appBar: AppBar(title: Text("Info"),
      backgroundColor: Colors.blue,
      )
      ,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children:[
            
            Text("Id:${obj.id} "),
            const SizedBox(height: 20,),
            Text("Name: ${obj.name} "),
            const SizedBox(height: 20,),
            Text("userName: ${obj.username}"),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>const Skill()));
            }, child: const Text("Add Skill"))
          ]
        ),
      )
    );
  }
}