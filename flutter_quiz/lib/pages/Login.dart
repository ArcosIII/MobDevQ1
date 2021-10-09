import 'package:flutter/material.dart';
import 'package:navigation/pages/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Login Page",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  login(context);
                },
                label: Text("Login"),
                icon: Icon(Icons.login),
                style: ElevatedButton.styleFrom(fixedSize: Size(100, 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(BuildContext context) {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }
}
