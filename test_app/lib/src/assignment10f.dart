import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
/*class Assignemnt10f extends StatefulWidget{
  const Assignemnt10f({super.key});
  @override
  State<Assignemnt10f> createState()=> _Assignment10fState();
}*/
class  Assignemnt10f extends StatelessWidget{
 const Assignemnt10f({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollable 10 containers"),
      ),
      body:  SingleChildScrollView(
         
        child:SizedBox(
          width: double.infinity,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               const SizedBox(
                  width: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.deepOrange,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.white,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.green
                  ,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.deepOrange,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.blue,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.pink,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.green,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.red,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.yellow,
                ),
                  const SizedBox(
                  height: 20,
                ),
                Container(
                  height:300 ,
                  width: 300,
                  color: Colors.black,
                )
          ],
         ) 
         ,),
      )
    );
  }
}