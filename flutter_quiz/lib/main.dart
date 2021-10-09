import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: routes,
    home: LoginScreen(),
  ));
}
