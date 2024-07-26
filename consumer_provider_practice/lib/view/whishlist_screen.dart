import 'package:consumer_provider_practice/controllers/whishlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WhishListScreen extends StatelessWidget{
  const WhishListScreen({super.key});

  @override 
  Widget build(BuildContext context){
    var obj = Provider.of<WhishListCotroller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhishList"),
        backgroundColor: Colors.red,
        centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: obj.whishList.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10) ,
                  color: Colors.blue),
                child: Row(
                  children: [
                    Image.network(obj.whishList[index]!.image, width: 100,),
                    const SizedBox(width: 5,),
                    Column(
                      children: [
                        Text(obj.whishList[index]!.productname),
                        const SizedBox(height: 5,),
                        Text(obj.whishList[index]!.price),
                        const SizedBox(height: 5,),
                        IconButton(
                          onPressed: (){
                          obj.removeFromWhishlist(index);
                          }, 
                          icon:const Icon(Icons.favorite))
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}