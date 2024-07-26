import 'dart:ui';

// main file
class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass(
      {required this.title, required this.description, required this.date});
}

List<ToDoModelClass> toDoList = [];

List cardColor = const [
  Color.fromRGBO(250, 232, 232, 1),
  Color.fromRGBO(232, 237, 250, 1),
  Color.fromRGBO(250, 249, 232, 1),
  Color.fromRGBO(250, 232, 250, 1),
];
