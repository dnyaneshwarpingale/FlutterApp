import 'package:expense_manager/sinup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                 Navigator.push(context,
                  MaterialPageRoute(
                      builder: ( context) => const SignUpScreen(),
        ),
      );
              },
              child: Container(
                width: 144,
                height: 144,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color:Color.fromRGBO(234, 238, 235, 1),
                ),
                child:Image.asset("assets/Group 77.jpg"),
              ),
            ),
            ),
    
            const SizedBox(height: 213,),
           Text("Expense Manager", 
            style:GoogleFonts.poppins(
              fontWeight:FontWeight.w500,
              fontSize: 16,
            ),)
        ],
      )
    );
  }
}
