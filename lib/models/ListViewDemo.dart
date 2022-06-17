import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_app/models/UserModel.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewDemo(),
  ));
}

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<Container> list = [];

  // int imageCounter = 1;
  // List<Image> images = [
  //   Image.asset('assets/images/img1.jpg'),
  //   Image.asset('assets/images/img2.jpg'),
  //   Image.asset('assets/images/img3.jpg'),
  //   Image.asset('assets/images/img4.jpg'),
  // ];
  // int times = 0;
  List<Container> myContainers = [];
  List<User> users = [
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
        username: "jinsar",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
    User(
        username: "ahmed",
        email: "unknown@gmail.com",
        password: "123",
        gender: "Male"),
  ];
  //Container mylayout = Container();

  // Container myGridview() {
  //   return Container(
  //     child: GridView.count(
  //       crossAxisCount: 3,
  //       children: images,
  //     ),
  //   );
  // }

  // Container mylistview() {
  //   return Container(
  //     child: ListView(
  //       children: users,
  //     ),
  //   );
  // }

  //int containerCounter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: ListView(
          children: myMethod(),
        ),
      ),

      /* DIRECT IMAGES */
      // children: [
      //   Image.asset(
      //     'assets/images/img1.jpg',
      //   ),
      //   Image.asset('assets/images/img2.jpg'),
      //   Image.asset('assets/images/img3.jpg'),
      //   Image.asset('assets/images/img4.jpg'),
      //   Image.asset('assets/images/img1.jpg'),
      //   Image.asset('assets/images/img2.jpg'),
      //   Image.asset('assets/images/img3.jpg'),
      //   Image.asset('assets/images/img4.jpg'),
      //   Image.asset('assets/images/img1.jpg'),
      //   Image.asset('assets/images/img2.jpg'),
      //   Image.asset('assets/images/img3.jpg'),
      //   Image.asset('assets/images/img4.jpg'),
      // ],

      /* NORMAL */
      //  child: Column(
      //
      //      children: list,
      // ),
    );
  }

  List<Container> myMethod() {
    for (int i = 0; i < users.length; i++) {
      myContainers.add(Container(
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
        //
        child: Row(
          children: [
            CircleAvatar(
              //  backgroundColor: Colors.pink,
              backgroundImage: AssetImage('assets/images/avatar$i.jpg'),
            ),
            Text(
              ' Username: ${users[i].username}\n Email: ${users[i].email}\n Password: ${users[i].password}\n Gender: ${users[i].gender}',
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ));
    }
    return myContainers;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
