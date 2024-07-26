
import 'package:flutter/material.dart';

import 'package:music_app/View/player_screen.dart';

class GalleryScreen extends StatefulWidget{
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  int myIndex =0;
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:const Color.fromRGBO(24, 24, 24, 1),
       bottomNavigationBar: const NavigationBarWidget(),
      
      body: SingleChildScrollView(
        child: Column(
          
          children:[
            Stack(
              children: [
                Image.asset("assets/111 1.png",
                height: 367,
                width: 459,
                fit:BoxFit.contain,
                
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                         const Row(
                           children: [
                            SizedBox(width: 20,),
                             Text("A.L.O.N.E", style:TextStyle(
                                color:Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                              )),
                           ],
                         ),
                         const SizedBox(height:10),
                          Row(
                            children: [
                              const SizedBox(width: 20,),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(255, 46, 0, 1)
                                ),
                                onPressed: (){}, 
                                child: const Text("Subscribe", style: TextStyle(
                                  color: Color.fromRGBO(19, 19, 19, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),)),
                            ],
                          ),
                         const SizedBox(height:30),
                      
                        ]
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:7 ,
                  width: 21,
                  decoration: const BoxDecoration(
                    color:  Color.fromRGBO(255, 61, 0, 1),
                    // shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                ),
             const SizedBox(width:5,),

                Container(
                  height:7 ,
                  width: 7,
                  decoration: const BoxDecoration(
                    color:  Color.fromRGBO(159, 159, 159, 1),
                    shape: BoxShape.circle
                  ),
                ),
             const SizedBox(width:5,),

                Container(
                  height:7 ,
                  width: 7,
                  decoration: const BoxDecoration(
                    color:  Color.fromRGBO(159, 159, 159, 1),
                    shape: BoxShape.circle
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Discography", 
                  style: TextStyle(
                    color: Color.fromRGBO(255, 46, 0, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    
                  ),
                  ),
                  Spacer(),
                  Text("See all", 
                  style:TextStyle(
                    color: Color.fromRGBO(248, 162, 69, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ), 
                  )
                ],
              ),
              
            ),
            const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Image.asset("assets/Rectangle 32.png",
                      height: 140,
                      width: 119,
                      ),
                      const SizedBox(height: 5,),
                   const   Text("Dead inside", style: TextStyle(
                        color: Color.fromRGBO(203, 200, 200, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                         ),),
                   const   Text("2020", style: TextStyle(
                        color: Color.fromRGBO(132, 125, 125, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                         ),)
                    ],
                  ),
                ),
                const SizedBox(width: 35,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                     MaterialPageRoute(
                      builder: (BuildContext context)=> const Player() ));
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/Rectangle 38.png",
                      height: 140,
                        width: 119,
                      ),
                      const SizedBox(height: 5,),
                   const   Text("Alone ", style: TextStyle(
                        color: Color.fromRGBO(203, 200, 200, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                         ),),
                   const   Text("2023", style: TextStyle(
                        color: Color.fromRGBO(132, 125, 125, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                         ),)
                    ],
                  ),
                ),
                const SizedBox(width: 35,),
        
                Column(
                  children: [
                    Image.asset("assets/Rectangle 39.png",
                    height: 140,
                      width: 119,
                    ),
                    const SizedBox(height: 5,),
                 const   Text("Heartless ", style: TextStyle(
                      color: Color.fromRGBO(203, 200, 200, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                       ),),
                 const   Text("2023", style: TextStyle(
                      color: Color.fromRGBO(132, 125, 125, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                       ),)
                  ],
                ),
              ],
              )),
        
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row (
                  children: [
                  SizedBox(width: 5,),
                  Text("Popular singles", style: TextStyle(
                    color: Color.fromRGBO(203, 200, 200, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),),
                  Spacer(),
                  Text("See all", 
                  style:TextStyle(
                    color: Color.fromRGBO(248, 162, 69, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  )
                  )
                ],),
        
              ),
        
              const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 
                 children: [
                   Row(
                     children: [
                       Image.asset("assets/Rectangle 34.png",
                       height: 72,
                       width: 67,
                       ),
                       const SizedBox(width: 5,),
                       const Column(
                         children: [
                           Text("We Are Chaos", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w600,
                             fontSize: 12,
                                                     ),
                           ),
                           SizedBox(height: 5,),
                           Text("2023 * Easy Living ", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w400,
                             fontSize: 10,
                                                     ),
                           ),
                         ],
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){}, 
                       icon:const Icon(Icons.more_vert_outlined , color: Color.fromRGBO(217, 217, 217, 1),)
                       
                       )
                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       Image.asset("assets/Rectangle 40@2x.png",
                       height: 72,
                       width: 67,
                       ),
                       const SizedBox(width: 5,),
                       const Column(
                         children: [
                           Text("Smile", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w600,
                             fontSize: 12,
                                                     ),
                           ),
                           SizedBox(height: 5,),
                           Text("2023 * Berrechid ", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w400,
                             fontSize: 10,
                                                     ),
                           ),
                         ],
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){}, 
                       icon:const Icon(Icons.more_vert_outlined , color: Color.fromRGBO(217, 217, 217, 1),)
                       
                       )
                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       Image.asset("assets/Rectangle 34.png",
                       height: 72,
                       width: 67,
                       ),
                       const SizedBox(width: 5,),
                       const Column(
                         children: [
                           Text("We Are Chaos", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w600,
                             fontSize: 12,
                                                     ),
                           ),
                           SizedBox(height: 5,),
                           Text("2023 * Berrechid ", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w400,
                             fontSize: 10,
                                                     ),
                           ),
                         ],
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){}, 
                       icon:const Icon(Icons.more_vert_outlined , color: Color.fromRGBO(217, 217, 217, 1),)
                       
                       )
                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       Image.asset("assets/Rectangle 40@2x.png",
                       height: 72,
                       width: 67,
                       ),
                       const SizedBox(width: 5,),
                       const Column(
                         children: [
                           Text("Smile ", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w600,
                             fontSize: 12,
                                                     ),
                           ),
                           SizedBox(height: 5,),
                           Text("2023 * Berrechid ", 
                           style: TextStyle(
                             color:Color.fromRGBO(203, 200, 200, 1) ,
                             fontWeight: FontWeight.w400,
                             fontSize: 10,
                                                     ),
                           ),
                         ],
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){}, 
                       icon:const Icon(Icons.more_vert_outlined , color: Color.fromRGBO(217, 217, 217, 1),)
                       
                       )
                     ],
                   ),
                   const SizedBox(height: 10,),
                 ],
               ),
             )
          ],),
      ),
    );
  }
}
class NavigationBarWidget extends StatefulWidget{
  const NavigationBarWidget({super.key});
  @override 
  State createState ()=> _NavigationBarWidgetState();

}

class _NavigationBarWidgetState extends State{
  int myIndex = 0;
  @override 
  Widget build(BuildContext context){
    return SizedBox(
        height: 75,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
          unselectedItemColor:const Color.fromRGBO(157, 178, 206, 1) ,
          // unselectedLabelStyle: const TextStyle(  color: Color.fromRGBO(157, 178, 206, 1),
          // ),
          // fixedColor: const Color.fromRGBO(230, 154, 21, 1),
          backgroundColor:const Color.fromRGBO(19, 19, 19, 1),
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border,
              color: Color.fromRGBO(157, 178, 206, 1),
              ),
              label: "Favorite",
              
              
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp, 
               color: Color.fromRGBO(157, 178, 206, 1),
                
                ),
                label: "Search",
                
                ),
            BottomNavigationBarItem(
              icon:Icon(Icons.home_outlined,
               color: Color.fromRGBO(157, 178, 206, 1),
              
              ),
              label: "Home",

              ),
              BottomNavigationBarItem(icon: Icon(Icons.trolley,
               color: Color.fromRGBO(157, 178, 206, 1),
              
              ),
              label: "Cart",

              ),
              BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp,
               color: Color.fromRGBO(157, 178, 206, 1),
              
              ),
              label: "Profile",

              ),
        
          ],
          
          ),
      );
  }
}