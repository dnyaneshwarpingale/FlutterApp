import 'package:expense_manager/mydrawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget{
  const CategoryScreen({super.key});

  @override 
  State createState()=> _CategoryScreenState();

}

class _CategoryScreenState extends State{

  showBottomSht(){
    showModalBottomSheet(
      context: context, 
      builder: (context){
       return Padding(
        padding:const  EdgeInsets.all(8.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 37,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 97,
                  width: 74,
                  child:Column(
                    children: [
                      Container(
                        height: 74,
                        width:74,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          
                        ),
                        child: Image.asset("assets/Group 45.png"),
                      ),
                    ],
                  ),
                
                ),
              ],
            ),
          const SizedBox(height: 8,),
          const Text("Image URL"),
          TextFormField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),
              hintText: "Enter URL",
            ),
          ),
          const SizedBox( height: 20,),
          const Text("Categoty"),
          TextFormField(
            decoration: InputDecoration(
              border:OutlineInputBorder(),

              hintText: "Enter Category",
            ),
          ),
          const SizedBox( height: 39,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:const Color.fromRGBO(14, 161, 125, 1)
                ),
                onPressed: (){}, 
                child: const Text("Add", style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1) ),)),
            ],
          ),

            
          ],
        ),
        );
      });
  }

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title:const Text("Category"),

      
    ),
    drawer: const MyDrawer(),
    body:GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        ), 
        itemCount: 4,
      itemBuilder: (context, index){
        return Container(
          width: 145,
          height: 150,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all(Radius.circular(14)),
            boxShadow: [
              BoxShadow(color:Color.fromRGBO(0, 0, 0, 0.15), blurRadius: 8, offset:Offset(1, 2))
            ]
          ),
          // color: Colors.amber,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                
                decoration: BoxDecoration(
                  // color:Color.fromRGBO(214, 3, 3, 0.7),
                  shape:BoxShape.circle,
                ),
                // child: SvgPicture.asset("assets/Vector.svg")),
              child: Image.asset("assets/food.jpg")),
             const SizedBox(height: 14,),

             Text("Food", style:GoogleFonts.poppins(
              fontWeight:FontWeight.w500,
              fontSize:16,
             ) ),
            ],
          )
        );
      }),
       floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: 166,
          height: 46,
          child: FloatingActionButton(
            onPressed: () {
               showBottomSht();
            },
            backgroundColor: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 14,
                ),
                Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(14, 161, 125, 1),
                    ),
                    child: const Icon(Icons.add_rounded, color: Colors.white)),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  "Add Category",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
  );

}
}