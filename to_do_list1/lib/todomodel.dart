class ToDoModelClass {
  String? title;
  String? description;
  String? date;
  ToDoModelClass({this.title, this.description, this.date});

  Map<String, dynamic> todoMap() {
    return {'title': title, 'description': description, 'date': date};
  }
}
List<ToDoModelClass> dataList = [];