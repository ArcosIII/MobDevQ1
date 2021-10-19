import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/routes.dart';



void main() async { 
  runApp( 
    EasyDynamicThemeWidget( 
      child: MyApp(), 
    ), 
  );
}

class MyApp extends StatelessWidget {  
   
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title:'MobDev Quiz', 
      theme: ThemeData.light(), 
      darkTheme: ThemeData.dark(), 
      themeMode: EasyDynamicTheme.of(context).themeMode, 
      routes: routes,
      home: LoginScreen(), 
    ); 
  }
}  



