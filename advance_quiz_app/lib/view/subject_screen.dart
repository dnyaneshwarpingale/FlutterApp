import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SubjectScreen extends StatelessWidget{
  const SubjectScreen({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height:50),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi Pamela", 
                    style:GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize:25,
                    color:const Color.fromRGBO(131, 76, 52, 1)
                    )
                    ),
                    Text("Great to see you again!", 
                    style:GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize:16,
                    color:const Color.fromRGBO(131, 76, 52, 1)
                    )
                    )
                  ],
                ),
                const SizedBox(width: 72,),
                Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(250, 188, 154, 1)
                  ),
                )
              ],
            ),

            const SizedBox(height: 48,),
           Container(
            height: 80,
            width: 306,
            decoration:BoxDecoration(
              color: const Color.fromRGBO(255, 237, 217, 1),
              borderRadius: BorderRadius.circular(15),

            ),
           ),


          
          ],
        ),
      ),
    );
  }
}