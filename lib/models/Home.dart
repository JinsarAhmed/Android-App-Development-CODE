import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Image> images = [];
  int times = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        leading: Icon(
          Icons.home,
          color: Colors.red,
        ),
        title: Center(
          child: Text(
            "My first app",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                images.add(
                  Image.asset('assets/images/img$times.jpg'),
                );
              });
              if (times == 4) {
                times = 1;
              } else {
                times++;
              }
            },
            child: Text(
              "Click me",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 50.0,
          height: 50.0,
          child: Column(
            children: images,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        hoverColor: Colors.green,
        onPressed: () {
          setState(() {
            images.add(
              Image.asset('assets/images/img$times.jpg'),
            );
          });
          if (times == 4) {
            times = 1;
          } else {
            times++;
          }
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
