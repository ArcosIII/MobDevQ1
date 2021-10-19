
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              
              color:Colors.white
            ),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          Text("LogOut")
        ]
      ),
      body: Center(
       child: ElevatedButton.icon(
          onPressed: () {
           EasyDynamicTheme.of(context).changeTheme();
          },
          label: Text("Switch Theme"),
          icon: Icon(Icons.wb_sunny_outlined),
        ),
      ),
    );
  }

}
