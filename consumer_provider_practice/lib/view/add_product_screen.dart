import 'package:consumer_provider_practice/controllers/product_controller.dart';
import 'package:consumer_provider_practice/models/productmodel.dart';
import 'package:consumer_provider_practice/view/display_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class AddProductScreen extends StatelessWidget{
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
   AddProductScreen({super.key});
  @override 
  Widget build(BuildContext context){
   ProductController obj = Provider.of<ProductController>(context);
    return Scaffold(
      appBar: AppBar(
        title:  const Text("ProviderConsumerPractice"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height:40),
            TextField(
              controller: _imageController,
              decoration: const InputDecoration(
                hintText: "Enter image url",
                border:OutlineInputBorder(),
                
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller:_nameController ,
              decoration: const InputDecoration(
                hintText: "Product Name",
                border:OutlineInputBorder(),
        
              ),
            ),
            const SizedBox(height: 20,),
        
            TextField(
              controller:_priceController ,
              decoration: const InputDecoration(
                hintText:"Price",
                border:OutlineInputBorder(),
        
              ),
            ),
            const SizedBox(height: 20,),
             ElevatedButton(
              onPressed: (){

               
                Navigator.push(context,
                MaterialPageRoute(
                builder: (BuildContext context) => const DisplayProduct() ,
    ),
  );
              }, 
              child: const Text("Submit") ),
              const SizedBox(height:20),
              ElevatedButton(
                onPressed: (){
                   var obj = ProductModel(image: _imageController.text.trim(), 
                productname: _nameController.text.trim(), 
                price:_priceController.text.trim(), 
                isFavorite:false, qauantity: 0);
                Provider.of<ProductController>(context, listen: false).addProduct(modelobj:obj);
                _imageController.clear();
                _nameController.clear();
                _priceController.clear();
                }, 
                child: const Text("ADD New Product")),
          ],
        ),
      ),
    );
  }
}