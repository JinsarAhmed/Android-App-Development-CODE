import 'package:flutter/material.dart';

import '../models/SignIn.dart';

void main() {
  runApp(InputDemo());
}

class InputDemo extends StatefulWidget {
  const InputDemo({Key? key}) : super(key: key);

  @override
  State<InputDemo> createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController outputController = TextEditingController();

  List<SignIn> users = [];
  int times = 0;
  List<Container> myContainers = [];
  String uname = "";
  String pass = "";

  List<Container> myMethod() {
    for (int i = 0; i < users.length; i++) {
      myContainers.add(
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red[800],
            border: Border.all(width: 10.0, color: const Color(0xFF3E2723)),
            borderRadius: BorderRadius.circular(20.0),
          ),
          width: 100.0,
          height: 100.0,
          child: Row(
            children: [
              Text(
                  ' Username: ${users[i].username}\n Email: ${users[i].password}',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 13,
                  )),
            ],
          ),
        ),
      );
    }
    return myContainers;
  }

  void mylistview() {
    setState(() {
      ListView(
        children: myMethod(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Login Page",
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  uname = usernameController.text;
                  pass = passwordController.text;
                });
              },
              icon: Icon(
                Icons.list,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          //  margin: EdgeInsets.all(20.0),
          color: Colors.black12,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/avatar1.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLength: 30,
                // maxLines: 4,
                // textAlign: TextAlign.center,
                controller: usernameController,
                // readOnly: true,        to make the textfield not writeable
                decoration: InputDecoration(
                    label: Text("Email"),
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              TextField(
                //readOnly: true,
                obscureText: true, // to hide the password
                // obscuringCharacter: 'x',  // to change the character of hidding possword.
                maxLength: 20,
                decoration: InputDecoration(
                    label: Text("Password"),
                    icon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
                controller:
                    passwordController, // prints the input of the above textfield
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        //String email = usernameController.text;
                        //String pass = passwordController.text;
                        //outputController.text = 'Email: $email, Password $pass';

                        users.add(SignIn(
                            username: usernameController.text,
                            password: passwordController.text));
                        usernameController.clear();
                        passwordController.clear();
                      });
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
              TextField(
                readOnly: true,
                controller: outputController,
              ),

              // Text(
              //   uname,
              // ),
              // Text(
              //   pass,
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            String mytext = usernameController.text;
            print(mytext);
            String mypassword = passwordController.text;
            print(mypassword);
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
