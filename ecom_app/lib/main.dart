import 'package:ecom_app/add_product_screen.dart';
import 'package:ecom_app/ecom_database.dart';
import 'package:ecom_app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
  createDatabase();

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
