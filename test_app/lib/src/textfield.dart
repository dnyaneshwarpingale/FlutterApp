import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextfieldDemoState();
}

class _TextfieldDemoState extends State {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  List<String> namelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Demo"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _namesTextEditingController,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            cursorColor: Colors.black,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              print("Value = $value");
            },
            onSubmitted: (value) {
              print("DATA SUBMITTED = $value");
            },
          ),
          Expanded (
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: namelist.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(2, 3),
                          )
                        ]),
                    // color: Colors.green,
                    height: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      namelist[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_namesTextEditingController.text == "") {
            return;
          }
          namelist.add(_namesTextEditingController.text);
          _namesTextEditingController.clear();
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
