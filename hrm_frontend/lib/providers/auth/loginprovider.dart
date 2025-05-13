import 'package:flutter/widgets.dart';

class LoginProvider extends ChangeNotifier {
  String _email = '';
  String _password = '';

  String get email => _email;
  String get password => _password;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  void loginUser() {
    // You can add your authentication logic here
    debugPrint("Login requested: Email=$_email, Password=$_password");
  }
}
