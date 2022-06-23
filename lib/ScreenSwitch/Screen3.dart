import 'package:flutter/material.dart';
import 'package:my_first_app/ScreenSwitch/Screen4.dart';

void main() {
  runApp(Screen3());
}

//import 'Screen2.dart';
//import 'Screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Screen 3",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  // 1st Way (Easy)
                  var nav = Navigator.of(context);
                  nav.pop();
                  nav.pop();

                  /* 2nd Way*/
                  // int count = 0;
                  // Navigator.of(context).popUntil((_) => count++ >= 2);

                  /*            3rd Way (NOT A GOOD WAY MAN)  */
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Screen1()));
                },
                child: Text("Back to Screen 1"),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Screen 2"),
              ),
              RaisedButton(
                color: Colors.brown,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen4()));
                },
                child: Text("Go to Screen 4"),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
