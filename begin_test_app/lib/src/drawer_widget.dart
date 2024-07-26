import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget{
  const DrawerWidget({super.key});
  State createState()=> _DrawerWidgetState();

}
class _DrawerWidgetState extends State{


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),

      ),
      body: const Center(
        child:  Text("Icubator"),

      ),

      drawer: Drawer(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("Expense Manager"),
            ),
            IconButton(
              onPressed: (){
               Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
              )
          ],
        ),),
    );
  }
}