import 'package:flutter/material.dart';
import 'package:music_app/View/gallery_screen.dart';


class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationBarWidget(),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(
              children: [
              Image.asset(
                "asd.png",
                height: 551,
                width: 390,
              ),
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Alone in the Abyss",
                        style: TextStyle(
                          color: Color.fromRGBO(230, 154, 21, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "Youlakou",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Spacer(),
                Icon(Icons.ios_share, color: Color.fromRGBO(230, 154, 21, 1),)
              ],),

            ),
            const SizedBox(height: 5,),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(children: [
                    SizedBox(width: 20,),
                    Text("Dynamic Warmup |", style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),),
                    Spacer(flex: 2,),
                    Text("4 min", style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),),
                  ],),
                 const SizedBox(height: 2,),

                Row(
                  children: [
                    Expanded(
                      child:
                    Slider(
                      thumbColor: const Color.fromRGBO(230, 154, 21, 1),
                      inactiveColor: const Color.fromRGBO(217, 217, 217, 0.19),
                      activeColor: const Color.fromRGBO(230, 154, 21, 1),
                    value: 0.9, 
                    onChanged:(newValue){} )
                    )
                  ],
                ),
                // const SizedBox(height: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    iconSize: 22,
                    color: const Color.fromRGBO(255, 255, 255, 1),

                    onPressed: (){}, 
                    icon: const Icon(Icons.repeat_one_outlined)),
                  IconButton(
                    iconSize: 27,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    onPressed: (){}, 
                    icon: const Icon(Icons.skip_previous_rounded)),
                  IconButton(
                    iconSize: 70,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    
                    onPressed: (){}, 
                    icon: const Icon(Icons.play_circle)),
                  IconButton(
                    iconSize: 28,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    
                    onPressed: (){}, 
                    icon: const Icon(Icons.skip_next_rounded)),
                  IconButton(
                    iconSize: 28,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    
                    onPressed: (){}, 
                    icon: const Icon(Icons.volume_up)),
                ],

                )
                ],
              ),
            ),
           
          ],
        ));
  }
}
