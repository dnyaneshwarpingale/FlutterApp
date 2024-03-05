import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvanceTodo extends StatefulWidget {
  const AdvanceTodo({super.key});
  @override
  State<AdvanceTodo> createState() => _AdvanceTodoState();
}

class _AdvanceTodoState extends State<AdvanceTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 29),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Good Morning ",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Text(
                "Pathum",
                style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 618,
              // color:const Color.fromRGBO(217, 217, 217, 1),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "CREATE TO DO LIST",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                      return Container(
                             child:Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle
                                  ),
                                  child: Image.asset("assets/Group 42.png"),
                                )
                              ],
                             ) 
                      );
                    }),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
