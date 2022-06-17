import 'package:flutter/material.dart';

import 'UserModel.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewDemo(),
  ));
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  // const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<User> users = [
    User(
        username: "Ahmed",
        email: "unknown@gmail.com",
        password: "1234",
        gender: "Male"),
    User(
        username: "ali",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "aasiya",
        email: "unknown@gmail.com",
        password: "jinsar",
        gender: "female"),
    User(
        username: "jinsar",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "ahmed",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "taha",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "afridi",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "sam",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "rafay",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
  ];

  List<Container> myContainers = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.orange,
        child: ListView(
          children: myMethod(),
        ),
      ),
    );
  }

  List<Container> myMethod() {
    for (int i = 0; i < users.length; i++) {
      myContainers.add(Container(
        padding: EdgeInsets.all(20.0),
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Text(
          'Username: ${users[i].username}\n Email: ${users[i].email}\n Password: ${users[i].password}\n Gender: ${users[i].gender}',
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
          ),
        ),
      ));
    }
    return myContainers;
  }
}
