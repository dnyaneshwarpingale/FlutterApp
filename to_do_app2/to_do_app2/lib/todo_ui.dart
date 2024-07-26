import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'todo_model.dart';
import 'sqflite_db.dart';

/// main file
class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController date = TextEditingController();
  int colorCount = 0;

  @override
  void initState() {
    super.initState();
    updateList();
  }

  Color? getColor() {
    if (colorCount > cardColor.length - 1) {
      colorCount = 0;
    }

    return cardColor[colorCount++];
  }

  bool getValue(ToDoModelClass obj) {
    if (obj.isDone == 1) {
      return true;
    } else {
      return false;
    }
  }

  void submit(bool doedit, [ToDoModelClass? toDoModelObj]) async {
    if (title.text.trim().isNotEmpty &&
        description.text.trim().isNotEmpty &&
        date.text.trim().isNotEmpty) {
      if (!doedit) {
        ToDoModelClass obj = ToDoModelClass(
            title: title.text.trim(),
            description: description.text.trim(),
            date: date.text.trim(),
            isDone: 0);
        await addTask(obj);
      } else {
        toDoModelObj!.date = date.text.trim();
        toDoModelObj.title = title.text.trim();
        toDoModelObj.description = description.text.trim();

        await updateTask(toDoModelObj);
      }

      clearController();
    }
  }

  void editTask(ToDoModelClass toDoModelObj) {
    title.text = toDoModelObj.title;
    description.text = toDoModelObj.description;
    date.text = toDoModelObj.date;

    displayBottomSheet(true, toDoModelObj);
  }

  Future<void> onCheck() async {
    await updateList();
    setState(() {});
  }

  Future<void> addTask(ToDoModelClass obj) async {
    await insertData(obj);
    await updateList();
    setState(() {});
  }

  Future<void> updateTask(ToDoModelClass obj) async {
    await updateData(obj);
    await updateList();
    setState(() {});
  }

  Future<void> removeTask(ToDoModelClass obj) async {
    await deleteData(obj);
    await updateList();
    setState(() {});
  }

  void clearController() {
    title.clear();
    description.clear();
    date.clear();
  }

  void displayBottomSheet(bool doedit, [ToDoModelClass? toDoModelObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 12, left: 25, right: 25, bottom: 26),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Create To-Do",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                        hintText: "Lorem Ipsum typeseting industry.",
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      controller: description,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        hintMaxLines: 2,
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                        hintText:
                            "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextField(
                      controller: date,
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025),
                            initialDate: DateTime.now());
                        if (pickDate != null) {
                          date.text = DateFormat.yMMMd().format(pickDate);
                        }
                      },
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_sharp,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        hintText: "Date",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    doedit ? submit(doedit, toDoModelObj) : submit(doedit);
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(255, 255, 255, 1))),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 29, top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
                Text(
                  "Aniket",
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 41,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color.fromRGBO(217, 217, 217, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 19,
                  ),
                  Text(
                    "CREATE TO DO LIST",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 40),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: SlidableAutoCloseBehavior(
                        child: ListView.builder(
                          // reverse: true,
                          itemCount: toDoList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Slidable(
                              // dragStartBehavior: DragStartBehavior.start,
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                extentRatio: 0.2,
                                motion: const DrawerMotion(),
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            editTask(toDoList[index]);
                                          },
                                          child: Container(
                                            height: 31.92,
                                            width: 31.92,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 11.86,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 13,
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            ToDoModelClass obj =
                                                toDoList[index];
                                            await removeTask(obj);
                                          },
                                          child: Container(
                                            height: 31.92,
                                            width: 31.92,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  89, 57, 241, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                              size: 11.86,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              key: ValueKey(index),
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 16),
                                height: 90,
                                decoration: const BoxDecoration(
                                    // color: getColor(),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromRGBO(12, 0, 0, 0.1),
                                        offset: Offset(0, 5),
                                        blurRadius: 15,
                                        spreadRadius: 0.5,
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 52,
                                      width: 52,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(217, 217, 217, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                      child: Image.asset(
                                        "assets/gallery-icon.png",
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            toDoList[index].title,
                                            style: GoogleFonts.quicksand(
                                              textStyle: const TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            toDoList[index].description,
                                            style: GoogleFonts.quicksand(
                                              textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontSize: 9,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            toDoList[index].date,
                                            style: GoogleFonts.quicksand(
                                              textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.7),
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Transform.scale(
                                      scale: 0.8,
                                      child: Checkbox(
                                        activeColor: Colors.green,
                                        checkColor: Colors.white,
                                        shape: const CircleBorder(),
                                        value: getValue(toDoList[index]),
                                        onChanged: (value) async {
                                          if (toDoList[index].isDone == 1) {
                                            toDoList[index].isDone = 0;
                                          } else {
                                            toDoList[index].isDone = 1;
                                          }

                                          await updateTask(toDoList[index]);
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clearController();
          displayBottomSheet(false);
        },
        shape: const CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        child: const Icon(
          Icons.add,
          size: 46,
        ),
      ),
    );
  }
}
