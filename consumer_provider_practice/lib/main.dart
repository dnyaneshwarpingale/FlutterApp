import 'package:consumer_provider_practice/controllers/product_controller.dart';
import 'package:consumer_provider_practice/controllers/whishlist_controller.dart';
import 'package:consumer_provider_practice/view/add_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create:(context) {
          return ProductController();
        },),
        ChangeNotifierProvider(create: (context){
          return WhishListCotroller();
        })
        ],
        child:MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AddProductScreen(),
        ),
        
    );
  }
}
