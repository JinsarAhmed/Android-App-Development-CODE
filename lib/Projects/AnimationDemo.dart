import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: AnimationDemo(),
  ));
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text("CONGRATULATIONS!"),
              ),
              Center(
                child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_touohxv0.json",
                  width: 150,
                  height: 150,
                ),
              ),
              Center(
                child: Text("You won 5000rs Jinsar Shaikh!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
