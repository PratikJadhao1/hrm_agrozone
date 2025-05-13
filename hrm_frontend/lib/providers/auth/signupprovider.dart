import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  String _name = '';
  String _phone = '';
  String _email = '';
  String _role = 'Admin';

  String get name => _name;
  String get phone => _phone;
  String get email => _email;
  String get role => _role;

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  void setPhone(String value) {
    _phone = value;
    notifyListeners();
  }

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setRole(String value) {
    _role = value;
    notifyListeners();
  }

  void registerUser() {
    // Implement registration logic
    debugPrint(
      "User Registered: Name=$_name, Phone=$_phone, Email=$_email, Role=$_role",
    );
  }
}
