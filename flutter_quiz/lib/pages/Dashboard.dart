import 'package:flutter/material.dart';
import 'package:navigation/pages/Profile.dart';
import 'package:navigation/pages/Settings.dart';
import 'dart:math';

class Dashboard extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int dice_no = 1;
  void update() {
    setState(() {
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              
              color:Colors.white
            ),
            onPressed: () {
              goToPage(context, Profile.routeName);
            },
          ),
          Text("Profile"),
          IconButton(
            icon: Icon(
              Icons.settings,
              
              color:Colors.white
            ),
            onPressed: () {
              goToPage(context, Settings.routeName);
            },
          ),
          Text("Settings"),
        ]
      ),
      body: Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: TextButton(
            child: Image.asset('images/dice$dice_no.png'),
            onPressed: () {
              update();
            },
          ),
        ),
      ),
    )
    );
  }

  

  void goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
