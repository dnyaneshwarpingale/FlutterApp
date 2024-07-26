import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:to_do_list1/advance_todo.dart' as ad;
import 'package:to_do_list1/basic_todo.dart';
import 'package:to_do_list1/todo_database.dart';

// dynamic database;

// Future<void> insertTodoData(ad.ToDoModelClass obj) async {
// final localDB = await database;
// await localDB.insert(
// "Todot",
// obj.todoMap(),
// conflictAlgorithm: ConflictAlgorithm.replace,
// );
// }

// Future <List<ad.ToDoModelClass>> getTodoData() async {
// final localDB = await database;

// List<Map<String, dynamic>> mapEntry = await localDB.query("Todot");

// return List.generate(mapEntry.length, (i) {
//   return ad.ToDoModelClass(
//        title: mapEntry[i]['title'],
//        description: mapEntry[i]['description'],
//        date: mapEntry[i]['date'],

// );
// });
// }

// Future<void> deleteOrderData(int data) async {
// final localDB = await database;

// await localDB.delete(
// "OrderFood",
// where: "orderNo = ?",
// whereArgs: [data],
// );
// }
void main()async {
  runApp(const MainApp());
  // databaseFactory = databaseFactoryFfi;
  // database = openDatabase(
  //   join(await getDatabasesPath(), "TodoDB.db"),

  //   version: 1,
  //   onCreate:(db, version) {
  //     db.execute(
  //       '''CREATE TABLE Todot(
  //         title TEXT ,
  //         description TEXT,
  //         date TEXT
  //       ) '''
  //     );

  //   },
  // );
  // createDatabase();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp(),
    );
  }
}
