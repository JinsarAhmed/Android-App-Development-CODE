import 'package:flutter/material.dart';

void main() {
  runApp(Screen4());
}

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Screen 4"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.red,
                onPressed: () {
                  var nav = Navigator.of(context);
                  nav.pop();
                  nav.pop();
                  nav.pop();

                  /* 2nd Way*/
                  // int count = 0;
                  // Navigator.of(context).popUntil((_) => count++ >= 3);
                },
                child: Text("Back to Screen 1"),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: () {
                  var nav = Navigator.of(context);
                  nav.pop();
                  nav.pop();
                },
                child: Text("Back to Screen 2"),
              ),
              RaisedButton(
                color: Colors.yellow,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Screen 3"),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
