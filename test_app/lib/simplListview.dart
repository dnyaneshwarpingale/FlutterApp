import 'package:flutter/material.dart';
class MyApp1 extends StatefulWidget{
  const MyApp1({super.key});
  @override
  State<MyApp1> createState()=> _MyAppState();

}
class _MyAppState extends State<MyApp1>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("ListView Demo"),

        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                "https://static9.depositphotos.com/1632087/1139/i/380/depositphotos_11395540-stock-photo-black-yellow.jpg",
              ),
            )
          ],
        )
      ),
    );
  }
}