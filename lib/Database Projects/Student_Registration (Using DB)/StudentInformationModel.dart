import 'package:flutter/material.dart';

class StudentInformationModel extends ChangeNotifier {
  String name;
  String roll_no;
  String email;
  String dept;
  String phone_no;

  StudentInformationModel(
      {required this.name,
      required this.roll_no,
      required this.email,
      required this.dept,
      required this.phone_no});
}
