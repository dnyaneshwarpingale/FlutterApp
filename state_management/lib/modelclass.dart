

import 'package:flutter/material.dart';

class UserData extends InheritedWidget{
  final String id;
  final String name;
  final String username;

  const UserData({
    super.key,
    required this.id, 
    required this.name, 
   required this.username,
   required super.child
   } );
   static UserData of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<UserData>()!;
   }
     @override
     bool updateShouldNotify(UserData oldWidget) {
     return (id != oldWidget.id && name != oldWidget.name && username != oldWidget.username);

     }


}