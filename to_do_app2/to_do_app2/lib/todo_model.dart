import 'dart:ui';

// main file
class ToDoModelClass {
  int? cardNo;
  String title;
  String description;
  String date;
  int isDone;

  ToDoModelClass(
      {this.cardNo,
      required this.title,
      required this.description,
      required this.date,
      required this.isDone});

  Map<String, dynamic> todoMap() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'isDone': isDone,
    };
  }

  @override
  String toString() {
    return '''{
      cardNo : $cardNo,
      title : $title,
      description : $description,
      date: $date,
      isDone: $isDone,
    }''';
  }
}

List<ToDoModelClass> toDoList = [];

List cardColor = const [
  Color.fromRGBO(250, 232, 232, 1),
  Color.fromRGBO(232, 237, 250, 1),
  Color.fromRGBO(250, 249, 232, 1),
  Color.fromRGBO(250, 232, 250, 1),
];
