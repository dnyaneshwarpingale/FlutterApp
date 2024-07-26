import 'package:flutter/material.dart';
import 'package:music_app/View/gallery_screen.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
 @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
   body:Column(
     children: [
       Stack(
        
        children: [
          Image.asset("assets/44 1.png", 
          height:648,
          width: 497,
          
           
          fit:BoxFit.contain
          ),
           const Positioned.fill(
            
            child:Align(
              
              alignment: Alignment.bottomCenter,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                SizedBox(
                  height: 480,
                ),
                 Text("Dancing between\nThe shadows\nOf rhythm", style:TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 36,
                    
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
                 
          
       
                ],
       
              ),
            )),
         
         ],
       ),
        ElevatedButton(
           style: ElevatedButton.styleFrom(
              backgroundColor:const Color.fromRGBO(255, 46, 0, 1),
              fixedSize: const Size(261, 47),
              // side: BorderSide(color:Colors.black,
              
              
              // ),
              shadowColor: Colors.black
       
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder:(BuildContext context)=> const GalleryScreen() ));
            }, 
            child: const Text("Get Started", style:TextStyle(
              color:Color.fromRGBO(19, 19, 19, 1),
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),)),
       
       const SizedBox(height: 15,),
        ElevatedButton(
           style: ElevatedButton.styleFrom(
              backgroundColor:const Color.fromRGBO(19, 19, 19, 1),
              fixedSize: const Size(261, 47),
              side:const BorderSide(color: Color.fromRGBO(255, 61, 0, 1))
       
            ),
            onPressed: (){}, 
            child: const Text("Continue with Email", style:TextStyle(
              color:Color.fromRGBO(255, 46, 0, 1),
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),)),
            const SizedBox(height: 20,),
           const Text("by continuing you agree to terms \n of services and  Privacy policy",
           style: TextStyle(
            color: Color.fromRGBO(203, 200, 200, 1)
           ),
           )
     ],
     
   )
      
    );
  }
}