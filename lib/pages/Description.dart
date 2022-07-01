import 'package:flutter/material.dart';

void main() {
  runApp(Description());
}

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Description"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Container(
            child: Text(
              "Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
