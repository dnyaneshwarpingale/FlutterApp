import 'package:expense_manager/category_screen.dart';
import 'package:expense_manager/graph_screen.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Expense Manager", style:GoogleFonts.poppins(
                  fontWeight:FontWeight.w600,
                  fontSize: 16,
                
                )),
                Text("Saves all your Transactions", style:GoogleFonts.poppins(
                  fontWeight:FontWeight.w400,
                  fontSize:10,
                )),
              ],
            ),
          ),
          const SizedBox(height:11),
         GestureDetector(
          onTap: (){},
          child:SizedBox(
          child: Row(
            children:[
              const SizedBox(width:20),
              Container(
                height: 18,
                width:17,
                child:Image.asset('assets/transaction.png'),
    
              ),
              const SizedBox(width:6),
              const Text("Transaction")
            ]
          ),
          )
         ),
         const SizedBox(height:24 ,),
         GestureDetector(
          onTap:() {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GraphPage(),
                    ));
          },
          child:SizedBox(
          child: Row(
            children:[
              const SizedBox(width:20),
              Container(
                height: 18,
                width:17,
                child:Image.asset('assets/graph.png'),
    
              ),
              const SizedBox(width:6),
              const Text("Graphs")
            ]
          ),
          )
         ),
         const SizedBox(height:24 ,),
         GestureDetector(
          onTap: () {
             Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    ));
          },
          child:SizedBox(
          child: Row(
            children:[
              const SizedBox(width:20),
              Container(
                height: 18,
                width:17,
                child:Image.asset('assets/category.png'),
    
              ),
              const SizedBox(width:6),
              const Text("Category")
            ]
          ),
          )
         ),
         const SizedBox(height:24 ,),
         GestureDetector(
          onTap: (){
             Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TrashPage(),
                    ));
          },
          child:SizedBox(
          child: Row(
            children:[
              const SizedBox(width:20),
              Container(
                height: 18,
                width:17,
                child:Image.asset('assets/trash.png'),
    
              ),
              const SizedBox(width:6),
              const Text("Trash")
            ]
          ),
          )
         ),
         const SizedBox(height:24 ,),
         GestureDetector(
          onTap: (){},
          child:SizedBox(
          child: Row(
            children:[
              const SizedBox(width:20),
              Container(
                height: 18,
                width:17,
                child:Image.asset('assets/aboutus.png'),
    
              ),
              const SizedBox(width:6),
              const Text("About us")
            ]
          ),
          )
         ),
         const SizedBox(height:24 ,),
        ],
      ),
    );
  }
}