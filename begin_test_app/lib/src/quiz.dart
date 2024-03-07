import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
const Quiz({super.key});
@override
State createState()=>_QuizState();
}
class _QuizState extends State{
  
  List<Map> que =[
    {
      "q":"Father of Java ?",
      "ansList":["James Glossling","ken thomsan","Goggle","None of these"],
      "correctOption":0,
    },
    {
      "q":"Father of Flutter ?",
      "ansList":["James Glossling","ken thomsan","Google", "None"],
      "correctOption":2,
    },
    {
      "q":"Father of C ?",
      "ansList":["James Glossling","Dennis Ritchi","Bjarne Stroustrup","none"],
      "correctOption":1,
    },
    {
      "q":"Father of CPP ?",
      "ansList":["James Glossling","Dennis Ritchi","none","Bjarne Stroustrup"],
      "correctOption":3,
    }
  ];
  int questionIndex=0;
  int selectedIndex=-1;
    bool  questionScreen=true;
       int rightAnswer=0;

  MaterialStateProperty<Color?> checkOptions(int currentIndex) {
    if (selectedIndex != -1) {
      if (currentIndex == que[questionIndex]["correctOption"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if(selectedIndex == currentIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }
  void validateScreen(){
    if(selectedIndex == -1){
      return;
    }
    if(selectedIndex==que[questionIndex]["correctOption"]){
      rightAnswer +=1;
    }
    if(selectedIndex !=-1){
      selectedIndex =-1;
      
      if(questionIndex ==que.length-1){
        questionScreen =false;
      }
      questionIndex +=1;
    }
  }

  Scaffold isQScreen(){
    
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            "Quiz App ",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${que.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 80,
              width: 320,
              child: Text(
                que[questionIndex]["q"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 330,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkOptions(0),
                ),
                onPressed: () {
                  if(selectedIndex==-1){
                  setState(() {
                    selectedIndex = 0;
                  });}
                },
                child: Text("A.${que[questionIndex]["ansList"][0]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 330,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkOptions(1),
                ),
                onPressed: () {
                   if(selectedIndex==-1){
                  setState(() {
                    selectedIndex = 1;
                  });}
                },
                child: Text("B.${que[questionIndex]["ansList"][1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 330,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkOptions(2),
                ),
                onPressed: () {
                   if(selectedIndex==-1){
                  setState(() {
                    selectedIndex = 2;
                  });}
                },
                child: Text("C.${que[questionIndex]["Options"][2]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 330,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkOptions(3),
                ),
                onPressed: () {
                  if(selectedIndex==-1){
                  setState(() {
                    selectedIndex = 3;
                  });}
                },
                child: Text("D.${que[questionIndex]["Options"][3]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    )),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
                validateScreen();
            });
          
          },
          tooltip: "next",
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:const Text("QuizApp",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(
              height:20,
        
            ),
            Image.network("https://img.freepik.com/premium-vector/realistic-golden-trophy-with-text-space-falling-confetti_48799-141.jpg?w=740",
            height: 200,
            width: 380,
        
            ),
            const Text("Congratulations",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You are the hard worker man\n your score is :",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              
              Text("$rightAnswer/${que.length}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed:(){
                  questionIndex=0;
                  selectedIndex=-1;
                  questionScreen=true;
                  rightAnswer=0;
                  setState(() {});
                }, 
                child: const Text("Restart", 
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),))
          ],
        ),
      );
    
  }
  }
  @override
  Widget build(BuildContext){
    return isQScreen();
  }
}