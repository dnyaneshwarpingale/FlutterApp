import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();

//  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Login Page"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Form(
            // key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  '''https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png''',
                  width: 90,
                  height: 90,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userNameTextEditingController,
                  key: userNameKey,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    label: const Text("Enter username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (value) {
                    print("In UserNAME validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter username";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  key: passwordKey,
                  controller: passwordTextEditingController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  validator: (value) {
                    print("In password Validator");
                    if (value == null || value.isEmpty) {
                      return "Please enter password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){
                      // bool loginValidated = _formKey.currentState!.validate();
                      // if(loginValidated){
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text("Login Successful"),),
                      //   );
                      // }else{
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content:Text("Login Failed"))
                      //   );
                      // }
                      bool userNameValidated = userNameKey.currentState!.validate();
                      bool passwordValidated = userNameKey.currentState!.validate();
                      
                      if(userNameValidated && passwordValidated){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content:Text("Login SuccessFul", style: TextStyle(color: Colors.green),),
                          backgroundColor: Colors.greenAccent,
                          )
                        );
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content:Text("Login Failed", style: TextStyle(color: Colors.red),),
                          backgroundColor: Colors.greenAccent,
                          )
                        );
                      }
                  },
                   child: const Text("Login"))
              ],
            ),
          ),
        ));
  }
}
