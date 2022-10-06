import 'package:flutter/material.dart';

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          )
          
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            
          ),
        ),
      ),
    );
    
  }
}


