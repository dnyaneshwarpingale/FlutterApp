import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldDemo1 extends StatefulWidget{
  
  const TextFieldDemo1({super.key});
  @override
  State createState(){ 
    print("In createState ");
    return _TextFieldDemo1State();
  }

}
 class _TextFieldDemo1State extends State{

@override
  void initState() {
    
    super.initState();
    print("In initState ");
  }

  @override
  void didChangeDependencies() {
    
    super.didChangeDependencies();
    print("In didChange dependencies");

  }

 @override
  void setState(VoidCallback fn) {
    
    super.setState(fn);
    print("In SetState");
  }
  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    
    super.didUpdateWidget(oldWidget);
    print("In didUpdate");

  }
  @override
  void deactivate() {
    
    super.deactivate();
    print("in deactivate");
  }
  @override
  void dispose() {
    
    super.dispose();
    print("in dispose");
  }

final TextEditingController nameController = TextEditingController();
final TextEditingController companyController = TextEditingController();
final TextEditingController locationController = TextEditingController();
bool isonclick=false;
List l1 =[];
List l2 =[];
List l3 =[];
int controlIndex =-1;



// Widget info(){
//   print(l1);
//   print(l2);
//   print(l3);
//   return SingleChildScrollView(
//     child: Container(
//       height: 150,
//       width: 350,
//       decoration: BoxDecoration(
//         border: Border.all(
          
//           color: Colors.blue,
          
//         ),
//         borderRadius: BorderRadius.circular(20)
//       ),
//       child: Row(
//         children: [
//           Column(
//             children: [
//               const SizedBox(height: 20,),
//               Text("Name        :  ${l1[controlIndex]}"),
//               const SizedBox(height: 30,),
//               Text("DreamCompany : ${l2[controlIndex]}"),
//               const SizedBox(height: 30,),
//               Text("Location     : ${l3[controlIndex]}")
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
 
// }
  @override
  Widget build(BuildContext context ){
    print("In Build");
    print(l1);
    print(l2);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text field used"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
           const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "name",
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:const BorderSide(
                   color: Colors.green,
                  )
                )
                // border: 
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
                controller: companyController,
                decoration: InputDecoration(
                  hintText: "Company name",
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color:Colors.green,
                    )
                  )
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                hintText: "location",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  )
                )
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed:(){
                
                if(nameController.text==""|| companyController.text ==""|| locationController.text==""){
                  
                  return;
                }else{
                l1.add(nameController.text);
                l2.add(companyController.text);
                l3.add(locationController.text);
                  isonclick=true;
                }
                controlIndex = controlIndex +1;
                
               nameController.clear();
               companyController.clear();
               locationController.clear();
                setState(() {});
              }, 
              child: const Text("SUBMIT")),
             (isonclick)? Expanded (
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: l1.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding:const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(2, 3),
                          )
                        ]),
                    // color: Colors.green,
                    height: 150,
                    
                    // alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    child: Text(
                     "Name: ${l1[index]}\n Company:${l2[index]}\n Location:${l3[index]}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  );
                }),
          ):Container()
              // (isonclick)? info()
              // : Container(),
          ],
        ),
    );
  }
 }