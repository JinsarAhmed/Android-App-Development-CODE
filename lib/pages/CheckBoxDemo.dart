import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CheckBoxDemo(),
  ));
}

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool? checkedValue = false;
  List<bool> days = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  // my way
  // bool? value2 = false;
  // bool? value3 = false;
  // bool? value4 = false;
  // bool? value5 = false;
  // bool? value6 = false;
  // bool? value7 = false;
  // bool? value8 = false;
  void checkUncheck(List<bool> days) {
    for (int i = 0; i < days.length; i++) {
      if (days[i] == false) {
        checkedValue = false;
      }
    }
    if (days[0] == true &&
        days[1] == true &&
        days[2] == true &&
        days[3] == true &&
        days[4] == true &&
        days[5] == true &&
        days[6] == true) {
      checkedValue = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Check box demo"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Container(
          color: Colors.yellow[800],
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              CheckboxListTile(
                  title: Text("Weekday"),
                  value: checkedValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      // bool? values = newValue;
                      checkedValue = newValue;
                      days[0] = newValue!;
                      days[1] = newValue;
                      days[2] = newValue;
                      days[3] = newValue;
                      days[4] = newValue;
                      days[5] = newValue;
                      days[6] = newValue;

                      // my way
                      // value2 = newValue;
                      // value3 = newValue;
                      // value4 = newValue;
                      // value5 = newValue;
                      // value6 = newValue;
                      // value7 = newValue;
                      // value8 = newValue;
                    });
                  }),
              Checkbox(
                  value: days[0],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[0] = newValue!;
                      checkUncheck(days);
                      // if (value2 == value2) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Monday"),
              Checkbox(
                  value: days[1],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[1] = newValue!;
                      checkUncheck(days);
                      // if (value3 == value3) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Tuesday"),
              Checkbox(
                  value: days[2],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[2] = newValue!;
                      checkUncheck(days);
                      // if (value4 == value4) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Wednesday"),
              Checkbox(
                  value: days[3],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[3] = newValue!;
                      checkUncheck(days);
                      // if (value5 == value5) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Thursday"),
              Checkbox(
                  value: days[4],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[4] = newValue!;
                      checkUncheck(days);
                      // if (value6 == value6) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Friday"),
              Checkbox(
                  value: days[5],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[5] = newValue!;
                      checkUncheck(days);
                      // if (value7 == value7) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Saturday"),
              Checkbox(
                  value: days[6],
                  onChanged: (bool? newValue) {
                    setState(() {
                      days[6] = newValue!;
                      checkUncheck(days);
                      // if (value8 == value8) {
                      //   checkedValue = false;
                      // }
                    });
                  }),
              Text("Sunday"),
            ],
          ),
        ),
      ),
    );
  }
}
