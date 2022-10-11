

import 'package:flutter/material.dart';
import 'package:praktikum3/Home_Page_1.dart';
import 'package:praktikum3/login_page.dart';
import 'package:praktikum3/onboarding_page.dart';
import 'package:praktikum3/sharedpref.dart';

Future<void> main() async {
  runApp(MyApp());
  // await SharedPref.init();

} 

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData themeData = ThemeData.light();

  void setTheme(bool isDarkMode) {
    setState(() {
      themeData = (isDarkMode) ? ThemeData.dark() : ThemeData.light();
    });
  }

  void initState(){
    bool isDarkMode = SharedPref.pref?.getBool('isDarkMode') ?? false;
    setTheme(isDarkMode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: themeData,
      home: Home_Page(setTheme: setTheme),
    );
    
  }
}

