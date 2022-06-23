import 'package:flutter/material.dart';
import 'package:my_first_app/ScreenSwitch/Screen3.dart';

//import 'package:my_first_app/ScreenSwitch/Screen3.dart';
void main() {
  runApp(Screen2());
}

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Screen 2"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Screen 1"),
              ),
              RaisedButton(
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen3()));
                },
                child: Text("Go to Screen 3"),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
