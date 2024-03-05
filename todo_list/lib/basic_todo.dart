import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class ToDoModelClass {
  String? title;
  String? description;
  String? date;
  ToDoModelClass({this.title, this.description, this.date});
}

class _MyAppState extends State<MyApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  final List cardColorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  List dataList = [
    // ToDoModelClass(
    //   title: "Project Work",
    //   description: "Project work completed within the validity",
    //   date: "26 feb 2024"

    // )
  ];

  void submit(bool doEdit, [ToDoModelClass? todoObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        dataList.add(ToDoModelClass(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text));
      } else {
        todoObj!.title = titleController.text;
        todoObj.description = descriptionController.text;
        todoObj.date = dateController.text;
      }
    }
    clearCotroller();
  }

  void clearCotroller() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void editCard(ToDoModelClass todoObj) {
    titleController.text = todoObj.title!;
    descriptionController.text = todoObj.description!;
    dateController.text = todoObj.date!;
    showbottomsheet(true, todoObj);
  }

  
  void showbottomsheet(bool doEdit, [ToDoModelClass? todoObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  " Create Task",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            // color: Color.fromRGBO(0, 139, 148, 1),
                            width: 1,
                          ),
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                              // color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: dateController,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              // initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));
                          String formatDate =
                              DateFormat.yMMMd().format(pickedDate!);
                          setState(() {
                            dateController.text = formatDate;
                          });
                        },
                        readOnly: true,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                  // color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                            )),
                      ),
                      TextField(
                        controller: dateController,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              // initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));
                          String formatDate =
                              DateFormat.yMMMd().format(pickedDate!);
                          setState(() {
                            dateController.text = formatDate;
                          });
                        },
                        readOnly: true,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.camera_alt_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                  // color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    // style: const ButtonStyle(
                    //   backgroundColor:MaterialStatePropertyAll( Color.fromRGBO(0, 139, 148, 1),),
                    //   fixedSize:MaterialStatePropertyAll(Size.fromWidth(300)),
                    // ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      fixedSize: const Size(300, 50),
                    ),
                    onPressed: () {
                      if (!doEdit) {
                        submit(doEdit);
                      } else {
                        submit(doEdit, todoObj);
                      }
                      setState(() {
                        Navigator.pop(context);
                      });

                      // (edit)?isOnEditSubbmit(index):isOnAddSubmit();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-Do List",
          style: GoogleFonts.quicksand(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 115,
                  width: 330,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: cardColorList[index % cardColorList.length],
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/Group 42.png",
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  dataList[index].title,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  dataList[index].description,
                                  style: const TextStyle(
                                      color: Color.fromRGBO(84, 84, 84, 1),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            dataList[index].date,
                            style: const TextStyle(
                              color: Color.fromRGBO(132, 132, 132, 1),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              editCard(dataList[index]);
                            },
                            child: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              dataList.removeAt(index);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showbottomsheet(false);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
