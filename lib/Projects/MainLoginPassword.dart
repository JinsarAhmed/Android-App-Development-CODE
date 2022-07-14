import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Projects/HomeScreen.dart';
import 'package:my_first_app/Projects/LogIn.dart';
import 'package:my_first_app/Projects/RegisterScreen.dart';

class MainLoginScreen extends StatefulWidget {
  //const MainLoginScreen({Key? key}) : super(key: key);
  MainLoginScreen({required this.users});
  final List<LogIn> users;

  @override
  State<MainLoginScreen> createState() => _MainLoginScreenState();
}

class _MainLoginScreenState extends State<MainLoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Foodpanda Pro"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login or Register",
                style: GoogleFonts.lobster(fontSize: 50),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                maxLength: 30,
                controller: usernameController,
                decoration: InputDecoration(
                    label: Text("Email"),
                    icon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    filled: true,
                    fillColor: Colors.pink[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true, // to hide the password
                maxLength: 20,
                decoration: InputDecoration(
                    label: Text("Password"),
                    icon: Icon(
                      Icons.key,
                      color: Colors.greenAccent,
                    ),
                    filled: true,
                    fillColor: Colors.pink[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                controller:
                    passwordController, // prints the input of the above textfield
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.pink),
                    onPressed: () {
                      setState(() {
                        String? username = usernameController.text;
                        String? pass = passwordController.text;
                        bool? verified = false;

                        usernameController.clear();
                        passwordController.clear();

                        for (int i = 0; i < widget.users.length; i++) {
                          if (username == widget.users[i].username &&
                              pass == widget.users[i].password) {
                            verified = true;
                          } else {
                            verified = false;
                          }
                        } // for

                        if (verified == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => HomeScreen(
                                        username: username,
                                      )));
                        } else if (username.isEmpty || pass.isEmpty) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Expanded(
                                    child: AlertDialog(
                                  backgroundColor: Colors.red,
                                  title: Text("Warning!"),
                                  content: Text(
                                      "Username or password cannot be empty!"),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "OK",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ));
                              });
                        } else if (verified == false) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Expanded(
                                    child: AlertDialog(
                                  backgroundColor: Colors.red,
                                  title: Text("Warning!"),
                                  content:
                                      Text("Username or password is wrong!"),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "OK",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ));
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Expanded(
                                    child: AlertDialog(
                                  backgroundColor: Colors.red,
                                  title: Text("Warning!"),
                                  content: Text(
                                      "You are not registered! Please Register Below.."),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Register",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ));
                              });
                        }
                      });
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Dont have a account?"),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => RegisterScreen()));
                      },
                      child: Text(
                        "Register Now!",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
