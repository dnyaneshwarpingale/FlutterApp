import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() {
    return _ToDoState();
  }
}

class _ToDoState extends State<TodoList> {
  List colorlist = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<String> data = [];
  List<String> date = [];
  List<String> heading = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            data.add(
                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s");
            heading.add("Lorem Ipsum is simply setting industry.");
            date.add("10 July 2023");
          }),
          child: const Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: colorlist[index],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 52,
                                      width: 52,
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        "assets/Group 42.png",
                                        width: 21.05,
                                        height: 11.17,
                                      ),
                                    ),
                                    Text(
                                      date[index],
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                        width: 243,
                                        child: Text(
                                          heading[index],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                        width: 243,
                                        child: Text(
                                          data[index],
                                          style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Container(
                                      width: 243,
                                      child: Row(
                                        children: [
                                          const Spacer(),
                                          SizedBox(
                                            width: 10,
                                            height: 13,
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                              size: 13,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                            width: 10,
                                            height: 13,
                                            child: Icon(
                                              Icons.delete,
                                              color: Colors.blue,
                                              size: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      );
                    }),
              ),
            ),
          ],
        ));
  }
}
