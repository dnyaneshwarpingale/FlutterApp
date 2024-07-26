import 'package:advance_quiz_app/view/subject_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context)=>const SubjectScreen()));
        },
        child: Center(
          child: Image.asset(
            "assets/Logo.png"
          ),
        ),
      ),
    );
  }
}