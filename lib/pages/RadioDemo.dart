import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RadioDemo(),
  ));
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

enum Food { Pizza, Burger, Biryani, Coffee, Pasta }

class _RadioDemoState extends State<RadioDemo> {
  Food? food = Food.Pizza;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ORIC Cafe",
            style: TextStyle(color: Colors.amber),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              "What would you like to order sir?...",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text("Pizza"),
              leading: Radio(
                  activeColor: Colors.red,
                  value: Food.Pizza,
                  groupValue: food,
                  onChanged: (Food? value) {
                    setState(() {
                      print(value);
                      food = value;
                    });
                  }),
            ),
            ListTile(
              title: Text("Burger"),
              leading: Radio(
                  activeColor: Colors.red,
                  value: Food.Burger,
                  groupValue: food,
                  onChanged: (Food? value) {
                    setState(() {
                      food = value;
                    });
                  }),
            ),
            ListTile(
              title: Text("Biryani"),
              leading: Radio(
                  activeColor: Colors.red,
                  value: Food.Biryani,
                  groupValue: food,
                  onChanged: (Food? value) {
                    setState(() {
                      food = value;
                    });
                  }),
            ),
            ListTile(
              title: Text("Coffee"),
              leading: Radio(
                  activeColor: Colors.red,
                  value: Food.Coffee,
                  groupValue: food,
                  onChanged: (Food? value) {
                    setState(() {
                      food = value;
                    });
                  }),
            ),
            ListTile(
              title: Text("Pasta"),
              leading: Radio(
                  activeColor: Colors.red,
                  value: Food.Pasta,
                  groupValue: food,
                  onChanged: (Food? value) {
                    setState(() {
                      food = value;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
