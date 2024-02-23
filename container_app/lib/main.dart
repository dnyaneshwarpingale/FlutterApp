import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade100,
          title: Text("Container Styling"),
        ),
        body: Container(
          // padding: const EdgeInsets.symmetric(horizontal:10, vertical: 10),
          // padding: const EdgeInsets.only(
          // left: 10,
          // right: 10,
          // top: 10,
          // bottom: 10),
          // color: Colors.blue,
          // // height: 100,
          // // width: 100,
          // margin: const EdgeInsets.only(
          //   top: 10,
          //   bottom: 10,
          //   left: 10,
          // ),

          // height: 200,
          // width: 200,
          // decoration: BoxDecoration(
          //     color: Colors.amber,
          //     borderRadius: const BorderRadius.all(Radius.circular(20)),
          //     border: Border.all(
          //       color: Colors.blue,
          //       width: 10,
          //     ),
          //     boxShadow: const [
          //       BoxShadow(
          //         color: Colors.purple,
          //         offset: Offset(30, 30),
          //         blurRadius: 8,
          //       ),
          //       BoxShadow(
          //         color: Colors.red,
          //         offset: Offset(20, 20),
          //         blurRadius: 8,
          //       ),
          //       BoxShadow(
          //         color: Colors.green,
          //         offset: Offset(10, 10),
          //         blurRadius: 8,
          //       ),
          //     ]),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: Colors.blue,
              width: 5,
            ),
            gradient: const LinearGradient(
              stops: [0.2, 0.5, 0.9],
              colors: [Color.fromARGB(255, 202, 82, 12), Colors.blue, Colors.green],
            ),
          ),
        ),
      ),
    );
  }
}
