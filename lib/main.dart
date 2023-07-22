
import 'package:flutter/material.dart';
import 'package:login_application/login.dart';
import 'package:login_application/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => Mylogin(),
      'register' : (context) => MyRegister()
    },
  ));
}


