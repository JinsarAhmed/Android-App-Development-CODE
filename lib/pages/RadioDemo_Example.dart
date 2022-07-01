import 'package:flutter/material.dart';
import 'package:my_first_app/pages/RadioDemoExample_Screen2.dart';

void main() {
  runApp(MaterialApp(
    home: RadioDemo_Example(),
  ));
}

class RadioDemo_Example extends StatefulWidget {
  const RadioDemo_Example({Key? key}) : super(key: key);

  @override
  State<RadioDemo_Example> createState() => _RadioDemo_ExampleState();
}

enum Food { Pizza, Burger, Biryani, Coffee, Pasta }

enum Gender { Male, Female }

enum Level { Beginner, Indermediate, Expert, Java, Python }

enum Shift { Morning, Evening }

enum SocialMedia { Facebook, Instagram, SnapChat }

enum CompanyName { companyName }

enum JobTitle { SoftwareEngineer, AppDeveloper }

class _RadioDemo_ExampleState extends State<RadioDemo_Example> {
  Food? food;
  Gender? gender;
  Level? level;
  Shift? shift;
  JobTitle? title;
  SocialMedia? socialmedia;
  TextEditingController nameController = TextEditingController();

  AlertDialog validate() {
    return AlertDialog(
      backgroundColor: Colors.red,
      title: Text("Empty selection"),
      content: Text("You have to select every field!"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ORIC Application",
            style: TextStyle(color: Colors.amber),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  maxLength: 30,
                  decoration: InputDecoration(
                      label: Text("Name"),
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Gender",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Male"),
                  leading: Radio(
                      activeColor: Colors.red,
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
                      activeColor: Colors.red,
                      value: Gender.Female,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          print(value);
                          gender = value;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.leaderboard),
                    Text(
                      "Programming Level: ",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Beginner"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Level.Beginner,
                      groupValue: level,
                      onChanged: (Level? value) {
                        setState(() {
                          level = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Intermediate"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Level.Indermediate,
                      groupValue: level,
                      onChanged: (Level? value) {
                        setState(() {
                          level = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Expert"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Level.Expert,
                      groupValue: level,
                      onChanged: (Level? value) {
                        setState(() {
                          level = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Java"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Level.Java,
                      groupValue: level,
                      onChanged: (Level? value) {
                        setState(() {
                          level = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Python"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Level.Python,
                      groupValue: level,
                      onChanged: (Level? value) {
                        setState(() {
                          level = value;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.access_time_filled),
                    Text(
                      "Working Shift: ",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Morning"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Shift.Morning,
                      groupValue: shift,
                      onChanged: (Shift? value) {
                        setState(() {
                          shift = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Evening"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: Shift.Evening,
                      groupValue: shift,
                      onChanged: (Shift? value) {
                        setState(() {
                          shift = value;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.facebook),
                    Text(
                      "Which social media used most? ",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Facebook"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: SocialMedia.Facebook,
                      groupValue: socialmedia,
                      onChanged: (SocialMedia? value) {
                        setState(() {
                          socialmedia = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("Instagram"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: SocialMedia.Instagram,
                      groupValue: socialmedia,
                      onChanged: (SocialMedia? value) {
                        setState(() {
                          socialmedia = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("SnapChat"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: SocialMedia.SnapChat,
                      groupValue: socialmedia,
                      onChanged: (SocialMedia? value) {
                        setState(() {
                          socialmedia = value;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.title),
                    Text(
                      "Job Title: ",
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Software Engineer"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: JobTitle.SoftwareEngineer,
                      groupValue: title,
                      onChanged: (JobTitle? value) {
                        setState(() {
                          title = value;
                        });
                      }),
                ),
                ListTile(
                  title: Text("App developer"),
                  leading: Radio(
                      activeColor: Colors.red,
                      value: JobTitle.AppDeveloper,
                      groupValue: title,
                      onChanged: (JobTitle? value) {
                        setState(() {
                          title = value;
                        });
                      }),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isEmpty ||
                            gender == null ||
                            level == null ||
                            shift == null ||
                            socialmedia == null ||
                            title == null) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Expanded(
                                    child: AlertDialog(
                                  backgroundColor: Colors.red,
                                  title: Text("Blank selection warning!"),
                                  content:
                                      Text("You have to fill all the fields!"),
                                ));
                              });
                        } else {
                          setState(() {
                            String? name = nameController.text;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RadioDemoExample_Screen2(
                                          // Gender.values,
                                          // Level.values,
                                          // Shift.values,
                                          // SocialMedia.values,
                                          // JobTitle.values
                                          gender,
                                          level,
                                          shift,
                                          socialmedia,
                                          title,
                                          name,
                                        )));
                          });
                        }
                      },
                      child: Text("Submit"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
