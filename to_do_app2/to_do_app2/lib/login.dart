//Login File
import 'package:advance_to_do/advanceToDo.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Map of users
  Map usersMap = {
    "Allhad": "Allhad123",
    "Sumant": "Sumant123",
  };

  bool passflag = true;

  //TextField Controllers
  TextEditingController userName = TextEditingController();
  TextEditingController passWord = TextEditingController();

  //GlobalKey for TextFormField
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  //this method will called when clicked on Login button
  void userLogin() {
    bool validate = _formkey.currentState!.validate();
    if (validate) {
      if (usersMap.containsKey(userName.text)) {
        if (usersMap[userName.text] == passWord.text) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("LOGIN SUCCESSFUL"),
            ),
          );
          String name = userName.text;

          //Navigate to TODOAppUI class if username and Password is correct
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return TODOAppUI(name);
          }));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Incorrect and password"),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Invalid username and password"),
          ),
        );
      }
    }
  }

  Scaffold screen() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(107, 112, 92, 1),
        title: const Text(
          "Advanced To-Do App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        //backgroung container
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: const Color.fromRGBO(254, 250, 224, 1),
          ),
          margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
          child: Form(
            //GlobalKey
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/login.png")),

                //TextFromField For UserName
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    controller: userName,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(107, 112, 92, 1),
                      ),
                      hintText: "Enter your UserName ?",
                      label: const Text(
                        "UserName",
                        style: TextStyle(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter username";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //TextFromField For PassWord
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    obscureText: passflag,
                    obscuringCharacter: "*",
                    controller: passWord,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(107, 112, 92, 1),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          passflag = !passflag;
                          setState(() {});
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      hintText: "Enter your PassWord ?",
                      label: const Text(
                        "Password",
                        style: TextStyle(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Login Button
                ElevatedButton(
                  onPressed: () {
                    userLogin();
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(107, 112, 92, 1),
                    ),
                    fixedSize: MaterialStatePropertyAll(Size(286, 50)),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //TextButton of Forgot password
                TextButton(
                  onPressed: () {},
                  child: const Text("Forgot password ?"),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return screen();
  }
}
