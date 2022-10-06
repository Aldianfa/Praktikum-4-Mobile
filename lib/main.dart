
// import 'dart:ffi';

// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:praktikum3/Home_Page_1.dart';
import 'package:praktikum3/home_page.dart';
import 'package:praktikum3/login_page.dart';
import 'package:praktikum3/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage()
    );
    
  }
}

