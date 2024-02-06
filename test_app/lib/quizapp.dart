import 'package:flutter/material.dart';
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State<QuizApp> createState()=>_QuizAppState();

}
class _QuizAppState extends State<QuizApp>{
int queCount =1;
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title:const Text("Quize App", 
      style:TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w900,
      )),
      backgroundColor: Colors.blue,
    ),
    body: Column(
      children: [
        const SizedBox(
          height: 20,
        ),Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children:[ const Text("Question: ", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,

        ),),
        const SizedBox(
          width :2
        ),
        Text("$queCount/10",),]),
        const SizedBox(
          height: 20,
        ),
       const SizedBox(
          child:  Text("Who is your favorite player ",
          style: TextStyle(
             fontSize: 20,
            fontWeight: FontWeight.normal,
          ),),
        ),
       const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text("virat Kohali")),
          const SizedBox(
            height: 10,
          ),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text("virat Kohali")),
          const SizedBox(
            height: 10,
          ),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text("virat Kohali")),
          const SizedBox(
            height: 10,
          ),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text("virat Kohali")),
          const SizedBox(
            height: 10,
          ),
      ],
      
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {
          queCount++;
        });
        
      },
      child: const Text("Next"),
    ),
  );
}
}
