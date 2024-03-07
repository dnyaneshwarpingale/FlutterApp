import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UiAssignment extends StatefulWidget{

  const UiAssignment({super.key});
@override
  State createState()=>_UiAssignmentState();
  
}
class _UiAssignmentState extends State{


  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromRGBO(205, 218, 218, 1),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const  Padding(
            padding: EdgeInsets.only(top: 47, left: 20, right: 20),
            child: Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.notifications_none_outlined),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Column(
            
            children: [
              Container(
                padding:const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to New", 
                  style:GoogleFonts.jost(
                    textStyle:const TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w300,
                
                    ),
                    
                  )),
                   Text("Educourse", 
                   style: GoogleFonts.jost(
                    textStyle:const TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.w700,
                    )
                   ),)
                ],
              ),
              ),

            ],
          ),
         const SizedBox(
          height: 20,
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
              padding:const EdgeInsets.all(8),
              height: 57,
              width: 320,
              decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(28.5)
              ),
              child: Row(
                children: [
                  Text("Enter your Keyword", 
                  style: GoogleFonts.inter(
                    textStyle:const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(143, 143, 143, 1)
                    )
                  ),),
                const   Spacer(),
                const Icon(Icons.search_rounded)
                ],
              ),
              ),
           ],
         ),
         const SizedBox(
          height: 15,
         ),
         Expanded(
           child: Container(
            padding: const EdgeInsets.all(10),
            // width: double.infinity,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(38), topRight: Radius.circular(38)),

              color:  Color.fromRGBO(255, 255, 255, 1)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Text("Course For You",
                style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  )
                ),),

                const SizedBox(
                  height: 15,
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children:[ 
                    Container(
                    width: 190,
                    height: 242,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                        gradient:LinearGradient
                        (
                          // begin: Alignment.center,
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(197, 4, 98, 1),Color.fromRGBO(80, 3, 112, 1)])
                    ),
                                      ),
                    const SizedBox(width: 20,),
                    Container(
                    width: 190,
                    height: 242,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                        gradient:LinearGradient
                        (
                          // begin: Alignment.center,
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [Color.fromRGBO(0, 77, 228, 1),Color.fromRGBO(1, 47, 135, 1)])
                    ),
                                      ),
                              ],)
              ],
            ),
           ),
         )
        ],)
    );
  }

}
