
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:to_do_list1/advance_todo.dart';
import 'package:to_do_list1/todomodel.dart';
dynamic database;

Future<void> insertTodoData(ToDoModelClass obj) async {
final localDB = await database;
await localDB.insert(
"Todot",
obj.todoMap(),
conflictAlgorithm: ConflictAlgorithm.replace,
);
}

Future <List<ToDoModelClass>> getTodoData() async {
final localDB = await database;

List<Map<String, dynamic>> mapEntry = await localDB.query("Todot");

return List.generate(mapEntry.length, (i) {
  return ToDoModelClass(
       title: mapEntry[i]['title'],
       description: mapEntry[i]['description'],
       date: mapEntry[i]['date'],

);
});
}

updateList() async {
  dataList = await getTodoData();
}
void createDatabase()async{
  print(" in create database");
  // databaseFactory = databaseFactoryFfi;
  database = openDatabase(
    join(await getDatabasesPath(), "TodoDB2.db"),

    version: 1,
    onCreate:(db, version) {
      db.execute(
        '''CREATE TABLE Todot(
          title TEXT ,
          description TEXT,
          date TEXT
        ) '''
      );

    },
  );
}