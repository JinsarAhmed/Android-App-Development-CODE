// import 'package:my_first_app/MessageAppDemo(Provider_Demo)/StudentInformationModel.dart';
// import 'package:my_first_app/MessageAppDemo(Provider_Demo)/Student_db_Helper.dart';
import 'package:flutter/material.dart';

import 'StudentInformationModel.dart';
import 'Student_db_Helper.dart';

class StudentInformation extends StatefulWidget {
  const StudentInformation({Key? key}) : super(key: key);

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

enum Gender { Male, Female }

class _StudentInformationState extends State<StudentInformation> {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController rollnoController = TextEditingController();
  static TextEditingController deptController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();
  static TextEditingController EmailController = TextEditingController();

  Gender? gender = Gender.Male;
  List<StudentInformationModel> students = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Information"),
          //centerTitle: true,
          backgroundColor: Colors.deepOrange,
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                onPressed: () {
                  for (int i = 0; i < students.length; i++) {
                    StudentDBHelper().addUser(students[i]);
                  }
                  setState(() {
                    students.length = 0;
                  });
                },
                child: Text("Update to Database")),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Currently in List (${students.length})",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Divider(
                  height: 10,
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Name"),
                      icon: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: nameController,
                ),
                TextField(
                  //readOnly: true,
                  controller: rollnoController,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Roll No"),
                      icon: Icon(
                        Icons.label,
                        color: Colors.pink,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  // controller:
                  // passwordController, // prints the input of the above textfield
                ),
                Text(
                  "Gender: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                ListTile(
                  title: Text("Male"),
                  leading: Radio(
                      activeColor: Colors.green,
                      value: Gender.Male,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          print(value);
                          gender = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Female"),
                  leading: Radio(
                      activeColor: Colors.green,
                      value: Gender.Female,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          print(value);
                          gender = value;
                        });
                      }),
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Email"),
                      icon: Icon(
                        Icons.email,
                        color: Colors.blue[800],
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: EmailController,
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Department"),
                      icon: Icon(
                        Icons.home_filled,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller:
                      deptController, // prints the input of the above textfield
                ),
                TextField(
                  //readOnly: true,
                  maxLength: 20,
                  decoration: InputDecoration(
                      label: Text("Phone No"),
                      icon: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: phoneController,
                ),
                Center(
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.orange[900]),
                    onPressed: () {
                      setState(() {
                        String name = nameController.text;
                        String rollno = rollnoController.text;
                        String email = EmailController.text;
                        String dept = deptController.text;
                        String phone = phoneController.text;

                        if (name.isNotEmpty &&
                            rollno.isNotEmpty &&
                            email.isNotEmpty &&
                            dept.isNotEmpty &&
                            phone.isNotEmpty) {
                          students.add(StudentInformationModel(
                              name: nameController.text,
                              roll_no: rollnoController.text,
                              email: EmailController.text,
                              dept: deptController.text,
                              phone_no: phoneController.text));
                        }

                        // StudentDBHelper().addUser(StudentInformationModel(
                        //     name: nameController.text,
                        //     roll_no: rollnoController.text,
                        //     email: EmailController.text,
                        //     dept: deptController.text,
                        //     phone_no: phoneController.text));

                        nameController.clear();
                        rollnoController.clear();
                        EmailController.clear();
                        deptController.clear();
                        phoneController.clear();
                      });
                    },
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
