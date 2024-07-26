import 'package:flutter/material.dart';


class Skill extends StatefulWidget{
  const Skill({super.key});
  @override
  State createState()=> _SkillState();
}
class _SkillState extends State{
TextEditingController skillController = TextEditingController();
List skill =[];
  @override

  Widget build(BuildContext context){
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 20,),
        TextField(
          controller:skillController ,
          decoration: InputDecoration(
            hintText: "Enter Your Skill",
            border:OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
        skill.add(skillController.text);
        setState(() {
          
        });
        }, child: const Text("ADD")),

        const SizedBox(height: 20,),

        Expanded(
          child: ListView.builder(
            itemCount:skill.length ,
            itemBuilder: (context, index){
              return Text(skill[index]);
            }),
        ),
      ],),
    );

  }
}