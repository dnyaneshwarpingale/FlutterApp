

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In MainApp Build");
    return MultiProvider(
      providers: [
        Provider(create:(context) {
          return Player(playerName:"Virat",jerNo:18);
        }, ),
        ChangeNotifierProvider(create:(context){
          return Match(matchNo:200, runs:8800);

        })
      ],
      child: const MaterialApp(
        home: MatchSummary(),
      ),
    );
  }
}
class MatchSummary extends StatefulWidget{
  const MatchSummary({super.key});

  @override
  State createState()=> _MatchSummaryState();
}
class _MatchSummaryState extends State{

  @override
  Widget build(BuildContext context){
  log("In MatchSummary build");
    return Scaffold(
      appBar: AppBar(
        title:const Text("ConsumerDemo"),
        backgroundColor: Colors.blue,

      ),
      body:Column(
        children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 30,),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height:30),
          Consumer(
            builder: (context, provider, child) {
              log("IN Consumer");
              return Column(children: [
                  Text("${Provider.of<Match>(context).matchNo}"),
                  const SizedBox(height:30),
                  Text("${Provider.of<Match>(context).runs}"),
                   const SizedBox(height:30),
              ],);
            },
          ),
   
          ElevatedButton(
            onPressed: (){
              Provider.of<Match>(context , listen: false).changeData(250, 8900);
            },
            child: const Text("change Data"),),

            const NormalClass(),
        ],
      )
    );
  }
}
class NormalClass extends StatelessWidget{
   const NormalClass({super.key});
  @override
  Widget build(BuildContext context){
    log("In Normalclass Build");
    return Text("${Provider.of<Match>(context).matchNo}");
  }
}

class Player{
  String playerName;
  int jerNo;
  Player({required this.playerName, required this.jerNo});
}

class Match extends ChangeNotifier{
  int matchNo;
  int runs ;
  Match({required this.matchNo, required this.runs});

  void changeData(int matchNo , int runs){
    this.matchNo=matchNo;
    this.runs = runs;
    notifyListeners();
  }
}