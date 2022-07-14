import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Projects/MainLoginPassword.dart';

import 'LogIn.dart';

// Some issues in comparing the passwords and reenterr password...
// all things okay.. fully working

class RegisterScreen extends StatefulWidget {
  //const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

enum Gender { Male, Female }

class _RegisterScreenState extends State<RegisterScreen> {
  static TextEditingController usernameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController reenter_passwordController =
      TextEditingController();
  static TextEditingController EmailController = TextEditingController();

  static List<LogIn> users = [];
  Gender? gender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Register Here",
            style: GoogleFonts.fjallaOne(),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Username"),
                      icon: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: usernameController,
                ),
                TextField(
                  //readOnly: true,

                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Lastname"),
                      icon: Icon(
                        Icons.label,
                        color: Colors.pink,
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  // controller:
                  // passwordController, // prints the input of the above textfield
                ),
                Text(
                  "Gender: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                ListTile(
                  title: Text("Male"),
                  leading: Radio(
                      activeColor: Colors.green,
                      value: Gender.Male,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          print(value);
                          gender = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Female"),
                  leading: Radio(
                      activeColor: Colors.green,
                      value: Gender.Female,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          print(value);
                          gender = value;
                        });
                      }),
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      icon: Icon(
                        Icons.email,
                        color: Colors.blue[800],
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: EmailController,
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      icon: Icon(
                        Icons.key,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller:
                      passwordController, // prints the input of the above textfield
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Re-enter Password"),
                      icon: Icon(
                        Icons.key,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.green[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: reenter_passwordController,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green[900]),
                  onPressed: () {
                    String Username = usernameController.text;
                    String Password = passwordController.text;
                    String RePassword = reenter_passwordController.text;
                    setState(() {
                      users.add(LogIn(username: Username, password: Password));
                      bool? verified = false;
                      for (int i = 0; i < users.length; i++) {
                        if (Password == RePassword) {
                          verified = true;
                        } else {
                          verified = false;
                        }
                      } // for
                      if (verified == false) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Expanded(
                                  child: AlertDialog(
                                backgroundColor: Colors.green,
                                title: Text(
                                  "Password does not match!",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content:
                                    Text("Both passwords must be same...."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK")),
                                ],
                              ));
                            });
                      }
                      if (Username.isEmpty ||
                          Password.isEmpty ||
                          RePassword.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Expanded(
                                  child: AlertDialog(
                                backgroundColor: Colors.green,
                                title: Text(
                                  "Password or email missing!",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: Text(
                                    "Both password and email must be provided.."),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK")),
                                ],
                              ));
                            });
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => MainLoginScreen(
                                      users: users,
                                    )));
                      }
                    });
                  },
                  child: Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
