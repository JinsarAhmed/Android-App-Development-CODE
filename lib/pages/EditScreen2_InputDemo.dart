import 'package:flutter/material.dart';

import '../models/SignIn.dart';

// void main() {
//   runApp(MaterialApp(
//     home: EditScreen2_InputDemo(),
//   ));
// }

class EditScreen2_InputDemo extends StatefulWidget {
// const EditScreen2_InputDemo({Key? key}) : super(key: key);
  EditScreen2_InputDemo(this.users, this.index);
  final List<SignIn> users;
  final int index;

  @override
  State<EditScreen2_InputDemo> createState() => _EditScreen2_InputDemoState();
}

class _EditScreen2_InputDemoState extends State<EditScreen2_InputDemo> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLength: 30,
                controller: usernameController,
                decoration: InputDecoration(
                    label: Text("New Email"),
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLength: 30,
                controller: passController,
                decoration: InputDecoration(
                    label: Text("New Password"),
                    icon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String email = usernameController.text;
                    String pass = passController.text;
                    //outputController.text = 'Email: $email, Password $pass';
                    // users.add(SignIn(username: email, password: pass));
                    // usernameController.clear();
                    // passController.clear();
                    widget.users.removeAt(widget.index);
                    widget.users.insert(
                        widget.index, SignIn(username: email, password: pass));
                  });
                  Navigator.pop(context);
                },
                child: Text("Update"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
