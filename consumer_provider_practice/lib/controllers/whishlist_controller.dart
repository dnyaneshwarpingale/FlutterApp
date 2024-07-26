import 'package:consumer_provider_practice/models/productmodel.dart';
import 'package:flutter/material.dart';

class WhishListCotroller with ChangeNotifier{

  List<ProductModel?> whishList=[];
  void addToWhislist(ProductModel obj){
    whishList.add(obj);

  }
  void removeFromWhishlist(int index){
    whishList.removeAt(index);
    notifyListeners();
  }
}