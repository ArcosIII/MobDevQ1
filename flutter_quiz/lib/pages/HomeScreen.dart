import 'package:flutter/material.dart';
import 'package:navigation/pages/Dashboard.dart';
import 'package:navigation/pages/Settings.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Home Screen",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      goToPage(context, Dashboard.routeName);
                    },
                    label: Text("Dashboard"),
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      goToPage(context, Settings.routeName);
                    },
                    label: Text("Settings"),
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
