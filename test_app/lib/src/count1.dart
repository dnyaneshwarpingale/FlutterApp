import 'package:flutter/material.dart';
class MyApp2 extends StatefulWidget{
  const MyApp2({super.key});
  @override
  State<StatefulWidget> createState()=> _MyApp2State();


}
class _MyApp2State extends State{
  int count=1;
  List<int> countList =[];

  @override
  Widget build(BuildContext contexty){
    return Scaffold(
      appBar:  AppBar(
        title: const Text(
        "Display count"
        ),
        
      ),
      body: ListView.builder(
        itemCount: countList.length,
        itemBuilder: (context,index){
          return Container(
            color: Colors.green,
            height: 50,
            alignment:Alignment.center,
            margin: const EdgeInsets.all(10),
            child:  Text( "${countList[index]}",//index=lenght-1 asto
            ),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              countList.add(count);
              count++;
            });
          },
          child: const Icon(
            Icons.add
          ),
        ),
    );
  }
}