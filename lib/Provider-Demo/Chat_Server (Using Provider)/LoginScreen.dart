import 'package:flutter/material.dart';
import 'package:my_first_app/Provider-Demo/Chat_Server%20(Using%20Provider)/MessageDemoScreen.dart';
import 'package:my_first_app/Provider-Demo/Chat_Server%20(Using%20Provider)/ProviderDemoModel.dart';
import 'package:provider/provider.dart';

import '../../models/DemoModel.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProviderDemoModel()),
      ChangeNotifierProvider(create: (context) => DemoModel()),
      ChangeNotifierProvider(create: (context) => TaskScreen()),
      ChangeNotifierProvider(create: (context) => LoginScreen()),
    ],
    child: MaterialApp(
      home: LoginScreen(),
    ),
  ));
}

class LoginScreen extends StatefulWidget with ChangeNotifier {
  String? username;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                radius: 70,
              ),
              SizedBox(
                height: 130,
              ),
              Text(
                "Enter Your Username...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      label: Text("Username"),
                      icon: Icon(
                        Icons.person,
                        color: Colors.pink,
                      ),
                      filled: true,
                      fillColor: Colors.pink[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      String text = usernameController.text;
                      widget.username = text;
                      print(widget.username);
                      Provider.of<DemoModel>(context, listen: false)
                          .setusername(text);
                    });

                    String? username = usernameController.text;
                    if (usernameController.text.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TaskScreen(
                                    username: username,
                                  )));
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.pinkAccent,
                              title: Text("Warning!"),
                              content: Text("Username cannot be empty!.."),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel")),
                              ],
                            );
                          });
                    }
                  },
                  child: Text("Start Chating!")),
            ],
          ),
        ),
      ),
    );
  }
}
