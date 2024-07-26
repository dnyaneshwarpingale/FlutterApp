

import 'package:consumer_provider_practice/models/productmodel.dart';
import 'package:flutter/material.dart';

class ProductController extends ChangeNotifier{

List<ProductModel?> pObj=[];

  void addProduct({required ProductModel modelobj}){
    pObj.add(modelobj);
    
  }

  void isFavorite1(int index){
    pObj[index]!.isFavorite = ! pObj[index]!.isFavorite;
    notifyListeners();
  }

  void increaseQuantity(int index){
    pObj[index]!.qauantity =  pObj[index]!.qauantity +1;
    notifyListeners();
  }
  void decreaseQuantity(int index){
    pObj[index]!.qauantity = pObj[index]!.qauantity -1;
    notifyListeners();
  }
}