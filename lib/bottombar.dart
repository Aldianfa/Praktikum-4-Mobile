import 'package:flutter/material.dart';

class BelajarGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("belajarFlutter.com"),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(9, (index) {
              return Container(
                child: Image.asset('')
              );
            }),
          )),
    );
  }
}