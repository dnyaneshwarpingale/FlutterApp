import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'todo_model.dart';

dynamic database;

Future<void> updateData(ToDoModelClass obj) async {
  final localDB = await database;

  await localDB.update(
    "ToDoApp",
    obj.todoMap(),
    where: 'cardNo = ?',
    whereArgs: [obj.cardNo],
  );
}

Future<void> insertData(ToDoModelClass obj) async {
  final localDB = await database;

  await localDB.insert(
    "ToDoApp",
    obj.todoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> deleteData(ToDoModelClass obj) async {
  final localDB = await database;

  await localDB.delete(
    "ToDoApp",
    where: 'cardNo = ?',
    whereArgs: [obj.cardNo],
  );
}

Future<List<ToDoModelClass>> getData() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntry = await localDB.query("ToDoApp");
  return List.generate(mapEntry.length, (i) {
    return ToDoModelClass(
        cardNo: mapEntry[i]['cardNo'],
        title: mapEntry[i]['title'],
        description: mapEntry[i]['description'],
        date: mapEntry[i]['date'],
        isDone: mapEntry[i]['isDone']);
  });
}

Future<void> updateList() async {
  toDoList = await getData();
  toDoList.reversed;
  print(toDoList);
}

Future<void> createDatabase() async {
  database = openDatabase(
    join(await getDatabasesPath(), "ToDoAppDB10.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE ToDoApp (
            cardNo INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            date TEXT,
            isDone BOOLEAN
            )
      ''');
    },
  );

  await updateList();
}
