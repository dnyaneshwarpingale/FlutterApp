import 'package:consumer_provider_practice/controllers/product_controller.dart';
import 'package:consumer_provider_practice/controllers/whishlist_controller.dart';
import 'package:consumer_provider_practice/view/whishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayProduct extends StatelessWidget{
  const DisplayProduct({super.key});

  @override 
  Widget build(BuildContext context){
    var obj = Provider.of<ProductController>(context);
    var obj2 = Provider.of<WhishListCotroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("DisplayProduct"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(
                builder: (BuildContext context) => const WhishListScreen() ,
    ),
  );
          }, 
          icon: const Icon(Icons.favorite))
        ],
      ),
      body: ListView.builder(
        itemCount: obj.pObj.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: 250,
            
            decoration: BoxDecoration(
            color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child:Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(obj.pObj[index]!.image
                ,height: 150,
                fit: BoxFit.fitWidth,
                
                ),
                const SizedBox(height: 5,),
                Text(obj.pObj[index]!.productname),
                const SizedBox(height: 5,),
                Text(" Rs.${obj.pObj[index]!.price}"),
                Row(
                  children: [
                  IconButton(
                    
                    onPressed:(){
                      obj.isFavorite1(index);
                      obj2.addToWhislist(obj.pObj[index]!);
                    
                  }, 
                  icon:Icon( (obj.pObj[index]!.isFavorite)
                  ? Icons.favorite_outlined
                  :Icons.favorite_border)),
                 const SizedBox(width:50),
                    
                 IconButton(
                  onPressed: (){
                  obj.increaseQuantity(index);
                  }, 
                  icon:const Icon(Icons.add),),
                    
                 Text("${obj.pObj[index]!.qauantity}"),
                    
                 IconButton(onPressed: (){
                 obj.decreaseQuantity(index);
                 },
                 icon:const Icon(Icons.remove)
                 )
                    
                ],)
              ],
            ),
                    ),
          );}
      )
    );
  }
}