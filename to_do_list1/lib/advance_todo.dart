import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list1/main.dart';
import 'package:to_do_list1/todo_database.dart';
import 'package:to_do_list1/todomodel.dart';



class AdvanceTodo extends StatefulWidget {
  const AdvanceTodo({super.key});
  @override
  State<AdvanceTodo> createState() => _AdvanceTodoState();
}





class _AdvanceTodoState extends State<AdvanceTodo> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  // List<ToDoModelClass> dataList = [] ;
  @override
  initState() {
    updateList();
    super.initState();
  }

  void submit(bool doEdit, [ToDoModelClass? todoObj]) async {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        // dataList.add(ToDoModelClass(
        //     title: titleController.text,
        //     description: descriptionController.text,
        //     date: dateController.text));

        insertTodoData(ToDoModelClass(
            title: titleController.text,
            description: descriptionController.text,
            date: dateController.text));
            
        dataList = await getTodoData();
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

  Future<void> showbottomsheet(bool doEdit, [ToDoModelClass? todoObj]) async {
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
                        maxLines: 3,
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
                          // setState(() {
                          dateController.text = formatDate;
                          // });
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
              child: Column(
                children: [
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
                        itemCount: dataList.length,
                        itemBuilder: (context, index) {
                          return Slidable(
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
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                89, 57, 241, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                89, 57, 241, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Icon(Icons.delete,
                                              color: Colors.white, size: 20),
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
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.only(
                                bottom: 20,
                                top: 20,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 0, 0, 0.05),
                                    width: 0.5),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 20,
                                    color: Color.fromRGBO(0, 0, 0, 0.13),
                                  )
                                ],
                                borderRadius:
                                    const BorderRadius.all(Radius.zero),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(217, 217, 217, 1),
                                        ),
                                        child:
                                            Image.asset("assets/Group 51.png"),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 260,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              dataList[index].title!,
                                              style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Colors.black,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              dataList[index].description!,
                                              style: GoogleFonts.inter(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.7),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              dataList[index].date!,
                                              style: GoogleFonts.inter(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 0.7),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Checkbox(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        activeColor: Colors.green,
                                        value: true,
                                        onChanged: (val) {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () async {
          await showbottomsheet(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
