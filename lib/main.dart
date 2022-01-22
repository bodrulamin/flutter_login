import 'package:flutter/material.dart';
import 'package:flutter_login/view/login_screen.dart';
import 'package:flutter_login/view/registration_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      '/' : (context) =>  LoginScreen(),
      '/register' : (context) =>  RegistrationScreen(),
    },
  ));
}
