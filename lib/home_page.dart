import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "1.png",
      "2.png",
      "3.png",
      "4.jpg",
      "5.png",
      "6.png",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios, color: Colors.amberAccent),
          onPressed: () {
            print('object');
            Navigator.of(context).pop();
          },
        ),
      ),

      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                hintText: 'Search',
              ),
            ),

            SizedBox(height: 15,),

            Text('Top menu',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),

            SizedBox(height: 15,),

            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ), 
              itemBuilder: ((BuildContext context,int index) {
                return
                Image.asset(images[index]);
              }),
              )

          ],
        ),
        
      ),
      
    );
  }
}