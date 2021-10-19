import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static String routeName = "/settings";
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          label: Text("Logout"),
          icon: Icon(Icons.logout),
          style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
        ),
      ),
    );
  }
}
