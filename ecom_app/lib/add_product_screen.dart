import 'package:ecom_app/ecom_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State createState() => _AddProductScreenState();
}

class EcomModelClass {
  String? pname;
  String? price;
  String? description;
  String? date;
  EcomModelClass({this.pname, this.description, this.date, this.price});

  Map<String ,dynamic> ecomMap(){
    return {
     'pname':pname,
     'price':price,
     'description': description,
     'date':date,

    };
  }
}
  List product = [];
  List productList = [];
class _AddProductScreenState extends State {
  // dynamic database;
  @override
  initState()  {
    // TODO: implement initState
    super.initState();
    // database =createDatabase();
    print("in init State");
    setState(() {
    updatelists();
      
    });
   
  }
  TextEditingController pnameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String? _selectedMenuItem;

  bool iscategory1 = true;


  void showbottomsheet(bool doEdit, [EcomModelClass? ecomObj]) {
    print(product);
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "  Details of Product ",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Category",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        readOnly: true,
                        controller:
                            TextEditingController(text: _selectedMenuItem),
                        decoration: InputDecoration(
                            suffixIcon: PopupMenuButton<String>(
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined),
                              onSelected: (String value) {
                                _selectedMenuItem = value;
                                if (_selectedMenuItem == "Category2") {
                                  iscategory1 = false;
                                } else {
                                  iscategory1 = true;
                                }
                              },
                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'Category1',
                                  child: Text('Category1'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Category2',
                                  child: Text('Category2'),
                                ),
                              ],
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                // color: Color.fromRGBO(0, 139, 148, 1),
                                width: 1,
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Name",
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: TextField(
                                  controller: pnameController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                      // color: Color.fromRGBO(0, 139, 148, 1),
                                      width: 1,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 150,
                                child: TextField(
                                  controller: priceController,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(
                                      // color: Color.fromRGBO(0, 139, 148, 1),
                                      width: 1,
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          borderSide: BorderSide(
                              // color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: dateController,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              // initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));
                          String formatDate =
                              DateFormat.yMMMd().format(pickedDate!);
                          setState(() {
                            dateController.text = formatDate;
                          });
                        },
                        readOnly: true,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_month),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                  // color: Color.fromRGBO(0, 139, 148, 1),
                                  ),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    // style: const ButtonStyle(
                    //   backgroundColor:MaterialStatePropertyAll( Color.fromRGBO(0, 139, 148, 1),),
                    //   fixedSize:MaterialStatePropertyAll(Size.fromWidth(300)),
                    // ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      fixedSize: const Size(300, 50),
                    ),
                    onPressed: () async {
                      // if (!doEdit) {
                      //   submit(doEdit);
                      // } else {
                      //   submit(doEdit, todoObj);
                      // }
                      // setState(() {
                      //   Navigator.pop(context);
                      // });

                      // (edit)?isOnEditSubbmit(index):isOnAddSubmit();
                      // (iscategory1)
                      //     ? product.add(EcomModelClass(pname: pnameController.text.trim(), price: priceController.text.trim()))
                      //     : productList.add(EcomModelClass(pname: pnameController.text.trim(), price: priceController.text.trim()));

                      if(iscategory1){
                        insertProductData(EcomModelClass(pname: pnameController.text.trim(),
                        price: priceController.text.trim()), "Category1");
                        product= await getEcomData("Category1");
                      }else{
                        insertProductData(EcomModelClass(pname: pnameController.text.trim(),
                        price: priceController.text.trim()), "Category2");
                        productList= await getEcomData("Category2");
                      }
                      setState(() {
                        pnameController.clear();
                        priceController.clear();
                        descriptionController.clear();
                        

                        Navigator.pop(context);
                        
                      });
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    print("in build method");
    print(productList);
    print("in buils ${product}");
    setState(() {
      
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("E-Commerce App"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text("Category1"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: product.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.yellow],
                            begin: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Text("${product[index].pname}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Price: ${product[index].price} "),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Category2"),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: productList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.green, Colors.yellow],
                            begin: Alignment.topCenter),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Text("${productList[index].pname}"),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Price:${productList[index].price}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showbottomsheet(false);
        },
        isExtended: true,
        tooltip: "Add product to sale",
        child: const Text("Add"),
      ),
    );
  }
}
