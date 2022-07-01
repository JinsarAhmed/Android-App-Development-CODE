import 'package:flutter/material.dart';
import 'package:my_first_app/pages/AboutPhone.dart';
//import 'package:my_first_app/pages/CheckBoxDemo.dart';
import 'package:my_first_app/pages/CheckBoxDemo.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavigation(),
  ));
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<Widget> mylist = [
    Container(
      child: Text("Home"),
    ),
    AboutInNavigation(),
    CheckBoxDemo(),
  ];
  Map<int, dynamic> mymap = {
    0: Container(
      child: Text("Home"),
    ),
    1: AboutInNavigation(),
    2: Container(
      child: Text("Settings"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          actions: [
            Icon(Icons.list),
          ],
        ),
        body: mymap[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          // for navigation b/w the navigation bar..
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Colors.amberAccent,
          backgroundColor: Colors.pinkAccent,
          currentIndex: currentIndex,
          // required..
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.tips_and_updates), label: "About Phone"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.notifications_active), label: "Notifications"),
          ],
        ),
      ),
    );
  }
}

class AboutInNavigation extends StatefulWidget {
  const AboutInNavigation({Key? key}) : super(key: key);

  @override
  State<AboutInNavigation> createState() => _AboutInNavigationState();
}

class _AboutInNavigationState extends State<AboutInNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 90, top: 50),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Column(children: [
                myCustomContainer(
                  icon: Icons.phone_android_sharp,
                  name: "Device name",
                  value: "realme 3 pro",
                  alert_title: "Device name",
                  alert_content: "realme 3 pro",
                ),
              ]),
              SizedBox(
                width: 160,
              ),
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.info_outline_rounded,
                    name: "Version",
                    value: "Baseband & kernel",
                    alert_title: "Version",
                    alert_content: "Baseband & kernel",
                  ),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),
          // 2nd row
          Row(
            children: [
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.expand_circle_down,
                    name: "realme UI Version",
                    value: "V1.0",
                    alert_title: "realme UI Version",
                    alert_content: "V1.0",
                  ),
                ],
              ),
              SizedBox(
                width: 138,
              ),
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.android,
                    name: "Android Version",
                    value: "10",
                    alert_title: "Android Version",
                    alert_content: "10",
                  ),
                ],
              ),
            ],
          ),

          // 3rd row
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.square_outlined,
                    name: "Processor",
                    value: "Qualcomm SDM710",
                    alert_title: "Processor",
                    alert_content: "Qualcomm SDM710",
                  ),
                ],
              ),
              SizedBox(
                width: 150,
              ),
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.gif_box,
                    name: "RAM",
                    value: "4.00 GB",
                    alert_title: "RAM",
                    alert_content: "4.00 GB",
                  ),
                ],
              ),
            ],
          ),

          // 4th row
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.storage,
                    name: "Device Storage",
                    value: "19.0 GH (Available)",
                    alert_title: "Device Storage",
                    alert_content: "19.0 GH (Available)",
                  ),
                ],
              ),
              SizedBox(
                width: 130,
              ),
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.copyright_outlined,
                    name: "Legal Information",
                    value: "User Agreement",
                    alert_title: "Legal Information",
                    alert_content: "User Agreement",
                  ),
                ],
              ),
            ],
          ),
          // 5th row
          SizedBox(
            height: 30,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myCustomContainer(
                    // pading: EdgeInsets.all(40),
                    icon: Icons.list_alt_sharp,
                    name: "Model",
                    value: "RMX1851",
                    alert_title: "Model",
                    alert_content: "RMX1851",
                  ),
                ],
              ),
              SizedBox(
                width: 190,
              ),
              Column(
                children: [
                  myCustomContainer(
                    icon: Icons.sim_card_sharp,
                    name: "SIM Card Status",
                    value: "SIM 1: SIM1",
                    alert_title: "SIM Card Status",
                    alert_content: "SIM 1: SIM1",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class CheckBoxInNavigation extends StatefulWidget {
//   const CheckBoxInNavigation({Key? key}) : super(key: key);
//
//   @override
//   State<CheckBoxInNavigation> createState() => _CheckBoxInNavigationState();
// }
//
// class _CheckBoxInNavigationState extends State<CheckBoxInNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellow[800],
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.,
//         children: [
//           CheckboxListTile(
//               title: Text("Weekday"),
//               value: checkedValue,
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   // bool? values = newValue;
//                   checkedValue = newValue;
//                   days[0] = newValue!;
//                   days[1] = newValue;
//                   days[2] = newValue;
//                   days[3] = newValue;
//                   days[4] = newValue;
//                   days[5] = newValue;
//                   days[6] = newValue;
//
//                   // my way
//                   // value2 = newValue;
//                   // value3 = newValue;
//                   // value4 = newValue;
//                   // value5 = newValue;
//                   // value6 = newValue;
//                   // value7 = newValue;
//                   // value8 = newValue;
//                 });
//               }),
//           Checkbox(
//               value: days[0],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[0] = newValue!;
//                   checkUncheck(days);
//                   // if (value2 == value2) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Monday"),
//           Checkbox(
//               value: days[1],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[1] = newValue!;
//                   checkUncheck(days);
//                   // if (value3 == value3) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Tuesday"),
//           Checkbox(
//               value: days[2],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[2] = newValue!;
//                   checkUncheck(days);
//                   // if (value4 == value4) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Wednesday"),
//           Checkbox(
//               value: days[3],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[3] = newValue!;
//                   checkUncheck(days);
//                   // if (value5 == value5) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Thursday"),
//           Checkbox(
//               value: days[4],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[4] = newValue!;
//                   checkUncheck(days);
//                   // if (value6 == value6) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Friday"),
//           Checkbox(
//               value: days[5],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[5] = newValue!;
//                   checkUncheck(days);
//                   // if (value7 == value7) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Saturday"),
//           Checkbox(
//               value: days[6],
//               onChanged: (bool? newValue) {
//                 setState(() {
//                   days[6] = newValue!;
//                   checkUncheck(days);
//                   // if (value8 == value8) {
//                   //   checkedValue = false;
//                   // }
//                 });
//               }),
//           Text("Sunday"),
//         ],
//       ),
//     );
//   }
// }
