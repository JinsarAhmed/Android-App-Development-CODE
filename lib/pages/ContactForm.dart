import 'package:flutter/material.dart';

void main() {
  runApp(ContactForm());
}

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool readName = false;
  bool readEmail = false;
  bool readPhone = false;
  bool readAdress = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Contact Form",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.contact_phone),
            color: Colors.amberAccent,
            onPressed: () {
              setState(() {
                nameController.clear();
                emailController.clear();
                phoneController.clear();
                addressController.clear();
              });
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  readName = false;
                  readEmail = false;
                  readPhone = false;
                  readAdress = false;
                });
              },
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                readOnly: readName,
                maxLength: 20,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Name"),
                    icon: Icon(Icons.person)),
                controller: nameController,
              ),
              TextField(
                readOnly: readEmail,
                maxLength: 50,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Email"),
                    icon: Icon(Icons.email)),
                controller: emailController,
              ),
              TextField(
                readOnly: readPhone,
                maxLength: 11,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Phone No"),
                    icon: Icon(Icons.phone)),
                controller: phoneController,
              ),
              TextField(
                readOnly: readAdress,
                maxLength: 30,
                maxLines: 4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: Text("Address"),
                    icon: Icon(Icons.home)),
                controller: addressController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    readName = true;
                    readEmail = true;
                    readPhone = true;
                    readAdress = true;
                  });
                },
                child: Text("Done"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
