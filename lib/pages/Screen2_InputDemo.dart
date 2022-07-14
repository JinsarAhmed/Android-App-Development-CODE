import 'package:flutter/material.dart';
import 'package:my_first_app/pages/EditScreen2_InputDemo.dart';

import '../models/SignIn.dart';

// METHOD 1 ..... using Statelesswidget

// class Screen2_InputDemo extends StatelessWidget {
//   //const Screen2_InputDemo({Key? key}) : super(key: key);
//
//   Screen2_InputDemo(this.users);
//   final List<SignIn> users;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text(
//             "List of Users",
//           ),
//           centerTitle: true,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: ListView(
//           children: containers(users),
//         ),
//       ),
//     );
//   }
// }

// METHOD 2 using Statefulwidget
class Screen2_InputDemoStfull extends StatefulWidget {
  //const Screen2_InputDemoStfull({Key? key}) : super(key: key);
  Screen2_InputDemoStfull(this.users);
  final List<SignIn> users;

  @override
  State<Screen2_InputDemoStfull> createState() =>
      _Screen2_InputDemoStfullState();
}

class _Screen2_InputDemoStfullState extends State<Screen2_InputDemoStfull> {
  // List<SignIn> users = users;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "List of Users",
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Row(
                children: [
                  Text(
                    "Email: ${widget.users[index].username} , Password: ${widget.users[index].password}",
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Colors.yellow,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.users.removeAt(index);
                      });
                    },
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditScreen2_InputDemo(
                                    widget.users, index)));
                      },
                      child: Text("Edit")),
                ],
              ),
            );
          },
          itemCount: widget.users.length,
        ),
        // ListView(
        //   children: containers(widget.users),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

List<Container> containers(List<SignIn> users) {
  List<Container> mycontainer = [];
  for (int i = 0; i < users.length; i++) {
    mycontainer.add(
      Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        color: Colors.grey,
        child: Row(
          children: [
            Text(
              "email: ${users[i].username} , password: ${users[i].password} ",
            ),
          ],
        ),
      ),
    );
  }
  return mycontainer;
}
