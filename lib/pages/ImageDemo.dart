import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(
//     home: ImageDemo(),
//   ));


class ImageDemo extends StatefulWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1200'),
      ),
    );
  }
}
