import 'package:ecom_app/add_product_screen.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

insertProductData(EcomModelClass obj, String str) async {
  final localDB = await database;
  await localDB.insert(
    str,
    obj.ecomMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<EcomModelClass>> getEcomData(String str) async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntry = await localDB.query(str);

  return List.generate(mapEntry.length, (i) {
    return EcomModelClass(
        pname: mapEntry[i]['pname'],
        description: mapEntry[i]['description'],
        price: mapEntry[i]['price']);
  });
}



dynamic database;
createDatabase() async {
  database = openDatabase(
    join(await getDatabasesPath(), "ecomDB4.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''CREATE TABLE Category1 (id INTEGER PRIMARY KEY, pname TEXT, description TEXT, date TEXT, price TEXT)''',
      );
      db.execute(
        '''CREATE TABLE Category2 (id INTEGER PRIMARY KEY, pname TEXT, description TEXT, date TEXT, price TEXT)''',
      );
    },
  );
}
// List product = [];
// List productList = [];
updatelists() async {
  print("in update list");
   product = await getEcomData("Category1");
    productList = await getEcomData("Category2");
    print(product);
    print(productList);
}