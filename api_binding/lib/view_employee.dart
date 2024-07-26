import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ViewEmployee extends StatefulWidget{
  const ViewEmployee({super.key});

  @override 
  State<ViewEmployee> createState()=> _ViewEmployeeState();
}
class _ViewEmployeeState extends State<ViewEmployee> {
  List<dynamic> empData =[];
  @override
  Widget build(BuildContext constext){
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(
        itemCount: empData.length,
        itemBuilder: ((context, index) {
          return Row(
            children:[
              Text(empData[index]['employee_name']),
              const SizedBox(width: 10),
              Text("${empData[index]["employee_salary"]}"),


            ]
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:getEmployeeData ,
        child: const Icon(Icons.add),
      ),
    );
  }
  void getEmployeeData()async{
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employee/1");
    http.Response response = await http.get(url);
    log(response.body);

    var responseData = json.decode(response.body);
    setState((){
       empData = responseData['data'];
    });
  }
}