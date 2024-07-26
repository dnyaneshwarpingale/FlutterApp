import 'package:flutter/material.dart';

class BasicStateManagement extends StatefulWidget{
  const BasicStateManagement({super.key});

@override 
State createState()=> _BasicStateManagement();

  
}

class _BasicStateManagement extends State{
  int java =0;
  int flutter= 0;

 @override 
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("StateManagement"),
    ),

    body: Column(
      
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                java= java +1;
                setState(() {
                  
                });
              },
              child: Container(
                color: Colors.yellow,
                child: const Text("Java"),
              ),
            ),
            const SizedBox(width: 20,),

            Text("$java"),

          ],
          
        ),

        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                flutter= flutter +1;
                setState(() {
                  
                });
              },
              child: Container(
                color: Colors.green,
                child: const Text("Flutter"),
              ),
            ),
            const SizedBox(width: 20,),

            Text("$flutter"),

          ],
          
        ),
      ],
    ),
  );
 } 
}