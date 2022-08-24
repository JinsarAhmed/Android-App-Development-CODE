import 'package:flutter/cupertino.dart';

class DemoModel extends ChangeNotifier {
  String username = "unknown123";

  void setusername(String value) {
    username = value;
    notifyListeners();
  }
}
