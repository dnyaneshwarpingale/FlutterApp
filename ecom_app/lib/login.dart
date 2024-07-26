import 'package:ecom_app/add_product_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'ecom_database.dart';




class LoginPage extends StatefulWidget{ 
     const LoginPage ({super.key});

   @override 
    State<LoginPage> createState() =>  _LoginPagState();
  }

  class userlogin{ 
     final String? userid; 
     final String? password ; 
    

    const userlogin({this.userid , this.password});
  }

class _LoginPagState extends State<LoginPage>{ 

  //listing data of user
       List userlogindata =[ 
           const userlogin(userid :"Virat11"  ,   
                          password:"rcb11")
        ];
  
    
  TextEditingController  username = TextEditingController();
  TextEditingController   password  = TextEditingController() ;
  final GlobalKey<FormState> _formKey = GlobalKey <FormState>() ;

  //condition 
  bool _loggedin=false ; 
  bool pagevisible=false ;

  void shownextpage() { 
    // database =createDatabase();
    
    // updatelists();
     if(_loggedin){ 
       Navigator.push ( 
         context , 
         MaterialPageRoute(builder: 
          (context) => const  AddProductScreen() )
       );
     }
  }


   @override 
    Widget build (BuildContext con){  
      return  Scaffold( 

          appBar: AppBar( 
             title:  Text ("Ecommerce application" ,
               
                style : GoogleFonts.quicksand(   
                     fontWeight:FontWeight.w700 , 
                     fontSize : 26 , 
                    color : Colors.black 

                ),
               ),
            
                 
              shape:const RoundedRectangleBorder( 
                    borderRadius:BorderRadius.only ( 
                       bottomLeft: Radius.circular(40) , 
                       bottomRight:Radius.circular(40)
                    )
              ),

              
              centerTitle: true ,

              
           
            backgroundColor: Colors.blue , 
          ), 
          body: SingleChildScrollView(
          child :  Padding ( 
                padding : const EdgeInsets.all(7.0),
                child:Form (   
                  key :_formKey , 
                  child :  Column (  
                    
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children : [ 
                          const SizedBox(height:10) ,

              Image.network( "https://thumb.ac-illust.com/c1/c100dc983cf973db49e42711e30be773_t.jpeg"   ,            
                               height:150, 
                                width : 180
                               )   ,

                              const SizedBox (height : 30) , 
                               
                               TextFormField(  
                                
                                 controller : username  , 
                             
                                 decoration : InputDecoration ( 
                                  iconColor: Colors.green,
                                   hintText :"Enter username" , 
                                   label : const Text("Enter username") , 
                                   border :OutlineInputBorder ( 
                                    
                                     borderRadius :BorderRadius.circular(20) ,
                                   ), 

                                   prefixIcon: const Icon (Icons.person
                                   ),
                                 

                                //  suffixIcon :IconButton (  
                                //     onPressed : () {   
                                //      setState ( () { 
                                //         pagevisible=!pagevisible ;
                                //      });
                                //     }, 
                                  //  suffixIcon:Icon (  
                                  //    pagevisible ? Icons.visibility : Icons.visibility_off
                                  //    )
                                 // )
                                 ),
                               validator : (value){ 
                                   print("In username validator" , ) ;
                                   if (value==null || value.isEmpty) { 
                                       return "please enter the username" ;
                                   }else { 
                                    return null ;
                                   }
                               },
                               keyboardType: TextInputType.emailAddress,  
                                 

                               ),

                               const SizedBox(height :20) ,

                             TextFormField( 
                               controller : password ,
                               //key:passwordKey 

                               obscureText :pagevisible ,
                               obscuringCharacter: "*",
                               decoration : InputDecoration( 
                               hintText : "Enter password" ,
                                    label : const Text("Enter Password") ,
                                 border :OutlineInputBorder( 
                                
                                
                                 borderRadius: BorderRadius.circular(20)
                                 ) ,
                                   prefixIcon:const Icon ( 
                                      Icons.lock ,
                                   ),

                                  suffixIcon :IconButton (  
                                   onPressed : () {   
                                    setState ( () { 
                                       pagevisible=!pagevisible ;
                                    });
                                   }, 
                                   icon:Icon (  
                                    pagevisible ? Icons.visibility : Icons.visibility_off_outlined
                                   )
                                 )
                                 ),


                             validator :(value){ 
                               
                               print("in password validator");
                               if(value==null || value.isEmpty){ 
                                 return "please enter passowrd" ;
                               }else { 
                                       return null ;
                               }
                             },  

                             ),
                             
                        const SizedBox(height:20),

                      SizedBox(  
                         height: 40 , 
                         width:150 , 
                         child :ElevatedButton(
                          
                              onPressed: () { 
                           
                            bool loginValidator = _formKey.currentState!.validate();

                            if(loginValidator){
                               if (username.text==userlogindata[0].userid && password.text==userlogindata[0].password) { 
                               ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar( 
                                  content : Text("login Successful"),
                                     backgroundColor: Color.fromARGB(237, 50, 244, 11) 
                                 ),

                               );
                                 _loggedin=true ;
                                 shownextpage() ;
                                 setState(() {
                                   
                                 });
                                 }else {

                                 _loggedin=false ;

                                 ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar( 
                                  content : Text("login failed"),
                                  backgroundColor: Color.fromARGB(238, 234, 19, 19) ,
                                 )
                                  );
                                 }
                               }
                            },
                          
                       
                                 
                                  // color:Colors.green,
                                  child: Text("Login" , 
                                          style :GoogleFonts.quicksand (   
                                                fontWeight:FontWeight.w700 ,
                                                color:const Color.fromARGB(255, 0, 138, 252)
                                          ), 
                                    )
                            )                     
                         )    
                      
      
                      ]
                  )
                )
               ) 
          )
               
        );

    }
}

