import 'package:flutter/material.dart';
import 'package:navigation/pages/Profile.dart';
import 'package:navigation/pages/Dashboard.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/pages/Settings.dart';

final Map<String, WidgetBuilder> routes = {
  Dashboard.routeName: (BuildContext context) => Dashboard(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  Profile.routeName: (BuildContext context) => Profile(),
  Settings.routeName: (BuildContext context) => Settings(),
};
